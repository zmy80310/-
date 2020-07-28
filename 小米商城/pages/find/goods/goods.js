// pages/find/goods/goods.js
Page({

  /**
   * 页面的初始数据
   */
  data: {
    goods:null,
    goods1:null
  },

  /**
   * 生命周期函数--监听页面加载
   */
  onLoad: function (options) {
      //获取砍价商品
      wx.request({
        url: 'http://localhost/wxphp/goods.php',
        success:res=>{
            this.setData({
                goods:res.data
            })
        }
      })

    wx.request({
      url: 'http://localhost/wxphp/goods1.php',
      success: res => {
        this.setData({
          goods1: res.data
        })
      }
    })
  },

  /**
   * 生命周期函数--监听页面初次渲染完成
   */
  onReady: function () {

  },

  /**
   * 生命周期函数--监听页面显示
   */
  onShow: function () {
    wx.setNavigationBarTitle({
      title: "助力砍价"
    }) 
  },

  /**
   * 生命周期函数--监听页面隐藏
   */
  onHide: function () {

  },

  /**
   * 生命周期函数--监听页面卸载
   */
  onUnload: function () {

  },

  /**
   * 页面相关事件处理函数--监听用户下拉动作
   */
  onPullDownRefresh: function () {

  },

  /**
   * 页面上拉触底事件的处理函数
   */
  onReachBottom: function () {

  },

  /**
   * 用户点击右上角分享
   */
  onShareAppMessage: function () {

  }
})