  // pages/shop/shop.js
Page({

  /**
   * 页面的初始数据
   */
  data: {
      tel:'',
      look:true,
      shopData:null,
      look:false,
    items: [
      { name: 'CHN', value: '全选' }
    ],
    numPri:0,
    number:0
  },
  gomi(){
      wx.switchTab({
        url: '/pages/home/home',
      })
  },
  checkboxChange(e){
    console.log();
    if (e.detail.value != ''){
        this.setData({
            look:true
        })
        let num = 0;
        let n = 0;
    for(let i = 0; i<this.data.shopData.length;i++){
      console.log();
      let pri = this.data.shopData[i].price;
      let number = this.data.shopData[i].number;
      n += number*1;
      num += pri*1;
    }
    console.log(num);
    console.log(n);
    this.setData({
        numPri:num,
        number:n
    })

    }else{
      this.setData({
        look: false,
        numPri:0,
        number:0
      })
    }
  },

  move(e){
    console.log(e.currentTarget.dataset.id)
    wx.showModal({
      title: '提示',
      content: '是否确定删除此商品',
      cancelText: '取消',
      confirmText: '确定',
      success:res=>{
        if (res.confirm) {
          wx.request({
            url: 'http://localhost/wxphp/gwmove.php',
            method: 'POST',
            header: {
              "content-type": 'application/x-www-form-urlencoded'
            },
            data: {
              id: e.currentTarget.dataset.id,
              tel:this.data.tel
            },
            success:res=>{
                this.setData({
                    shopData:res.data
                })
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
        this.setData({
          tel:res.data
        })
        if (res.data != '') {
          wx.request({
            url: 'http://localhost/wxphp/shop.php',
            method: 'POST',
            header: {
              "content-type": 'application/x-www-form-urlencoded'
            },
            data: {
              tel: res.data
            },
            success: res => {
              console.log(res.data);
              if (res.data != '') {
                this.setData({
                  look: false,
                  shopData: res.data
                })
              }
            }
          })
        }
      },
      fail: res => {
        if (res.data == null) {
          this.setData({
            look: false
          })
        }
      }
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