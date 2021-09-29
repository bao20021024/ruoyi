import request from '@/utils/request'

// 查询接诊记录列表
export function listReceiverecord(query) {
  return request({
    url: '/medical/receiverecord/listSickroom',
    method: 'get',
    params: query
  })
}

// 分床
export function getListSickroom() {
  return request({
    url: '/medical/sickroom/getList',
    method: 'get'
  })
}

// 新增分床记录
export function addSplitbed(data) {
  return request({
    url: '/medical/splitbed',
    method: 'post',
    data: data
  })
}

//根据门诊id获取诊断结果
export function getInfoResult(data) {
  return request({
    url: '/medical/result/getInfo',
    method: 'post',
    data: data
  })
}

//获取所有药品信息
export function getListDrugs() {
  return request({
    url: '/medical/drugs/getList',
    method: 'post'
  })
}

//开药
export function kaiResultHandle(data) {
  return request({
    url: '/medical/resulthandle',
    method: 'post',
    data: data
  })
}

//用药详情
export function yaoResultHandle(data) {
  return request({
    url: '/medical/resulthandle/getList',
    method: 'post',
    data: data
  })
}

//开药完毕
export function wanResultHandle(data) {
  return request({
    url: '/medical/resulthandle/wan',
    method: 'post',
    data: data
  })
}
