import request from '@/utils/request'

// 查询接诊记录列表
export function listReceiverecord(query) {
  return request({
    url: '/medical/receiverecord/list',
    method: 'get',
    params: query
  })
}

// 查询接诊记录详细
export function getReceiverecord(opDoctorReceiveRecordId) {
  return request({
    url: '/medical/receiverecord/' + opDoctorReceiveRecordId,
    method: 'get'
  })
}

// 新增接诊记录
export function addReceiverecord(data) {
  return request({
    url: '/medical/receiverecord',
    method: 'post',
    data: data
  })
}

// 修改接诊记录
export function updateReceiverecord(data) {
  return request({
    url: '/medical/receiverecord',
    method: 'put',
    data: data
  })
}

// 删除接诊记录
export function delReceiverecord(opDoctorReceiveRecordId) {
  return request({
    url: '/medical/receiverecord/' + opDoctorReceiveRecordId,
    method: 'delete'
  })
}

// 导出接诊记录
export function exportReceiverecord(query) {
  return request({
    url: '/medical/receiverecord/export',
    method: 'get',
    params: query
  })
}

// 新增医生看病流程
export function kanAction(data) {
  return request({
    url: '/medical/action',
    method: 'post',
    data: data
  })
}

// 新增医生看病流程
export function jianAction(data) {
  return request({
    url: '/medical/action/jian',
    method: 'post',
    data: data
  })
}

//诊断
export function duanAction(data) {
  return request({
    url: '/medical/result',
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
