// pages/find/choose/choose.js
Page({

  /**
   * 页面的初始数据
   */
  data: {
    choocetop:null,
    chooce:null,
  },
  choo(e){
    let id = e.currentTarget.dataset.id;
    console.log(id);
    wx.navigateTo({
      url: `/pages/home/info/info?shop_data=${id}`,
    })
      
  },
  /**
   * 生命周期函数--监听页面加载
   */
  onLoad: function (options) {
    //获取背景图片
    wx.request({
      url: 'http://localhost/wxphp/choocetop.php',
      success: res => {
        this.setData({
          choocetop: res.data
        })
      }
    })
    wx.request({
      url: 'http://localhost/wxphp/chooce.php',
      success: res => {
        console.log(res.data);
        this.setData({
          chooce:res.data
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
      title: "优先购"
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