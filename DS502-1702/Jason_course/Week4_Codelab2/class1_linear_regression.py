# coding=utf-8
import numpy as np
import matplotlib.pyplot as plt
from sklearn import datasets, linear_model


# 绘图函数
def plot_line(x, y, y_hat, line_color='blue'):
    # Plot outputs
    plt.scatter(x, y,  color='black')
    plt.plot(x, y_hat, color=line_color,
             linewidth=3)
    plt.xticks(())
    plt.yticks(())

    plt.show()


# 梯度函数 1/m * sum((y_hat - y) * x)
def linear_grad_func(theta, x, y):
    # TODO compute gradient
    # compute gradient
    # np.dot((1 x m), (m x 2))
    # 输出: 对于每一个w求偏导，w维度为1 x 2，所以grad维度也应该是1 x 2
    # 输出维度: 1 x 2
    grad = np.dot((linear_val_func(theta, x) - y).T, np.c_[np.ones(x.shape[0]), x])
    grad = grad / x.shape[0]

    return grad


# 前向传播求值函数 y_hat = wT * x
def linear_val_func(theta, x):
    # forwarding
    # 第一列添加bias 1
    # 输出维度: m x 1
    return np.dot(np.c_[np.ones(x.shape[0]), x], theta.T)


# 损失函数: cost_func = 1/m * sum((y_hat-y)^2)
def linear_cost_func(theta, x, y):
    # TODO compute cost (loss)
    # compute cost (loss)
    y_hat = linear_val_func(theta, x)
    cost = np.mean((y_hat-y)**2)

    return cost


# 梯度下降法: theta = theta - alpha * partial_derivative(cost_func)
def linear_grad_desc(theta, X_train, Y_train, lr=0.1, max_iter=10000, converge_change=.001):

    cost_iter = []
    # 先算cost
    cost = linear_cost_func(theta, X_train, Y_train)
    cost_iter.append([0, cost])
    cost_change = 1
    i = 1

    # 两个判断：1. 如果cost变化满足条件则退出迭代
    #          2. 如果迭代次数达到10000次，也退出迭代
    while cost_change > converge_change and i < max_iter:
        pre_cost = cost
        # 再算gradient
        # compute gradient: partial_derivative(cost_func)
        grad = linear_grad_func(theta, X_train, Y_train)
        # update gradient

        # TODO Update gradient
        # 再乘以学习率，更新梯度
        # theta is what we want to train !!!
        theta = theta - lr * grad
        # model is pre-defined: linear

        # 再算cost
        # compute loss
        cost = linear_cost_func(theta, X_train, Y_train)
        cost_iter.append([i, cost])

        # 计算cost变化是否满足要求
        cost_change = abs(cost - pre_cost)
        i += 1

    return theta, cost_iter


# 线性回归
def linear_regression():
    # load dataset
    dataset = datasets.load_diabetes()
    # Select only 2 dims
    X = dataset.data[:, 2]
    Y = dataset.target

    # split dataset into training and testing
    X_train = X[:-20, None]
    X_test = X[-20:, None]

    Y_train = Y[:-20, None]
    Y_test = Y[-20:, None]

    # Linear regression
    theta = np.random.rand(1, X_train.shape[1]+1)
    fitted_theta, cost_iter = linear_grad_desc(theta, X_train, Y_train, lr=0.1, max_iter=50000)

    print('Coefficients: {}'.format(fitted_theta[0,-1]))
    print('Intercept: {}'.format(fitted_theta[0,-2]))
    print('MSE: {}'.format(np.sum((linear_val_func(fitted_theta, X_test) - Y_test)**2) / Y_test.shape[0]))

    plot_line(X_test, Y_test, linear_val_func(fitted_theta, X_test))


# 用sklearn完成线性回归
def sklearn_linear_regression():
    # load dataset
    dataset = datasets.load_diabetes()
    # Select only 2 dims
    X = dataset.data[:, 2]
    Y = dataset.target

    # split dataset into training and testing
    X_train = X[:-20, None]
    X_test = X[-20:, None]

    Y_train = Y[:-20, None]
    Y_test = Y[-20:, None]

    # Linear regression
    regressor = linear_model.LinearRegression()
    regressor.fit(X_train, Y_train)
    print('Coefficients: {}'.format(regressor.coef_))
    print('Intercept: {}'.format(regressor.intercept_))
    print('MSE:{}'.format(np.mean((regressor.predict(X_test) - Y_test) ** 2)))

    plot_line(X_test, Y_test, regressor.predict(X_test), line_color='red')


def main():
    print('Class 1 Linear Regression Example')
    linear_regression()

    print ('')

    print('sklearn Linear Regression Example')
    sklearn_linear_regression()


if __name__ == "__main__":
    main()
