// pages/home/home.js
Page({

  /**
   * 页面的初始数据
   */
  data: {
      list:[],
    statusH:'',
    barH:'',
    banners:[],
    day:{},
    list_two:[],
    list_one:[],
    r:null
  },

  /**
   * 生命周期函数--监听页面加载
   */
  onLoad: function (options) {
    this.setData({
      windowHeight: wx.getStorageSync ('windowHeight')
    });
    wx.getSystemInfo({
      success:res=>{
        this.setData({
          statusH: `height:${res.statusBarHeight}px`,
          barH: `height:${res.statusBarHeight}px`,
        })
      }
    });

    //网络请求轮播图数据
    wx.request({
      url: 'http://localhost/wxphp/lunbo.php',
      success:res=>{
          this.setData({
              list:res.data
          })
      }
    })

    //网络请求banner
    wx.request({
      url: 'http://localhost/wxphp/banner.php',
      success:res=>{
          this.setData({
            banners:res.data
          })
      }
    })

    //网络请求渲染人气
    wx.request({
      url: 'http://localhost/wxphp/day.php',
      success:res=>{
          this.setData({
              day:res.data
          })
      }
    })
    //网络请求渲染商品
    wx.request({
      url: 'http://localhost/wxphp/listtwo.php',
      success:res=>{
          this.setData({
              list_two:res.data
          })
      }
    })
    //网络请求渲染商品
    wx.request({
      url: 'http://localhost/wxphp/listone.php',
      success:res=>{
          this.setData({
              list_one:res.data
          })
      }
    })
    //请求商城早报
    wx.request({
      url: 'http://localhost/wxphp/r.php',
      success:res=>{
          this.setData({
              r:res.data
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