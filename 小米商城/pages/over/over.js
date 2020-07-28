// pages/over/over.js
Page({
  /**
   * 页面的初始数据
   */
  data: {
      top:true,
      id:true
  },
  over(){
      if(this.data.top == true){
        wx.navigateTo({
          url: '/pages/login/login',
        })
      }
  },
  write(){
    wx.showModal({
      title: '提示',
      content: '是否退出登录',
      cancelText: '取消',
      confirmText: '确定',
      success:res=> {
        if (res.confirm) {
          wx.removeStorage({
            key: 'uname',
            success: res => {
              this.setData({
                top:true
              })
            },
          })
        }
      }
    })
   
  },
  /**
   * 生命周期函数--监听页面加载
   */
  onLoad: function (options) {
     
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
    wx.getStorage({
      key: 'uname',
      success: res => {
        if (res.data != '') {
          this.setData({
            top: false
          })
        }
      },
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