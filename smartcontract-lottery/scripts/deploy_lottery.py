from scripts.helpful_scripts import get_account
from brownie import Lottery, network, config


def deploy_lottery():
    account = get_account()
    lottery = Lottery.deploy(get_contract("eth_usd_price_feed").address)


def main():
    deploy_lottery()
