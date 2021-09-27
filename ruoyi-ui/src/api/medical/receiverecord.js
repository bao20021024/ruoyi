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
