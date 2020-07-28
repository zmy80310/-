// pages/home/info/site/sites/sites.js
Page({

  /**
   * 页面的初始数据
   */
  data: {
      lock:true,
      look:false,
      name:'',
      tel:'',
      cite:'',
      address:'',
      item:null

  },
  name(e){
    this.setData({
      name: e.detail.value
    })
  },
  tel(e){
    this.setData({
      tel: e.detail.value
    })
  },
  cite(e){
    this.setData({
      cite: e.detail.value
    })
  },
  address(e){
    this.setData({
      address:e.detail.value
    })
  },
  save(){
    if (this.data.name && this.data.tel && this.data.cite && this.data.address != ''){
          wx.request({
            url: 'http://localhost/wxphp/xg2.php',
            method: 'POST',
            header: {
              "content-type": 'application/x-www-form-urlencoded'
            },
            data: {
              id: this.data.item.id,
              name: this.data.name,
              cell: this.data.tel,
              cite: this.data.cite,
              address: this.data.address,
            },
            success:res=>{
                console.log(res.data);
                if(res.data === 1){
                  wx.showToast({
                    title: '修改成功',
                    icon: 'success',
                    duration: 2000
                  })
                  setTimeout(() => {
                    wx.navigateBack({
                      delta: 1
                    })
                  }, 2000)
                }
            }
          })
      }else{
      wx.showToast({
        title: '输入内容为空',
        icon: 'loading',
        duration: 2000
      })
      }
  },
  move(){
    wx.showModal({
      title: '提示',
      content: '是否确定删除此地址',
      cancelText: '取消',
      confirmText: '确定',
      success:res=> {
        if (res.confirm) {
          wx.request({
            url: 'http://localhost/wxphp/dzmove.php',
            method: 'POST',
            header: {
              "content-type": 'application/x-www-form-urlencoded'
            },
            data: {
              id: this.data.item.id,
            },
            success:res=>{
                console.log(res.data);
              if (res.data === 1) {
                wx.showToast({
                  title: '删除成功',
                  icon: 'success',
                  duration: 2000
                })
               setTimeout(()=>{
                 wx.navigateBack({
                   delta: 1
                 })
               },2000 )
              }
            }
          })
        }
      }
    })
  },
  /**
   * 生命周期函数--监听页面加载
   */
  onLoad: function (options) {
    this.setData({
      item: JSON.parse(options.item)
    })
    if (this.data.item.look){
      console.log(111);
      this.setData({
          look:true,
          lock:false
      })
      wx.request({
        url: 'http://localhost/wxphp/xg1.php',
        method: 'POST',
        header: {
          "content-type": 'application/x-www-form-urlencoded'
        },
        data: {
          id: this.data.item.id
        },
        success: res => {
          console.log(res.data);
          this.setData({
              name:res.data.name,
              tel:res.data.tel,
              cite:res.data.city,
              address:res.data.address
          })
        }
      })
    }   
  },
  newad(){
    if(this.data.name && this.data.tel && this.data.cite && this.data.address != ''){
        wx.getStorage({
          key: 'uname',
          success: res=> {
            wx.request({
              url: 'http://localhost/wxphp/site.php',
              method: 'POST',
              header: {
                "content-type": 'application/x-www-form-urlencoded'
              },
              data: {
                name: this.data.name,
                cell: this.data.tel,
                cite:this.data.cite,
                address:this.data.address,
                tel:res.data
              },
              success:res=>{
                  console.log(res.data);
                  if(res.data === 1){
                    wx.showToast({
                      title: '添加成功',
                      icon: 'success',
                      duration: 2000
                    })
                  }
              }
            })
          },
          fail:res=>{
            wx.showToast({
              title: '请先去登陆',
              icon: 'loading',
              duration: 2000
            })
          }
        })
    }else{
      wx.showToast({
        title: '输入内容为空',
        icon: 'loading',
        duration: 2000
      })
    }
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