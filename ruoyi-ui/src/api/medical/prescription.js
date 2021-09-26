import request from '@/utils/request'

// 查询住院治疗处方列表
export function listPrescription(query) {
  return request({
    url: '/medical/prescription/list',
    method: 'get',
    params: query
  })
}

// 查询住院治疗处方详细
export function getPrescription(id) {
  return request({
    url: '/medical/prescription/' + id,
    method: 'get'
  })
}

// 新增住院治疗处方
export function addPrescription(data) {
  return request({
    url: '/medical/prescription',
    method: 'post',
    data: data
  })
}

// 修改住院治疗处方
export function updatePrescription(data) {
  return request({
    url: '/medical/prescription',
    method: 'put',
    data: data
  })
}

// 删除住院治疗处方
export function delPrescription(id) {
  return request({
    url: '/medical/prescription/' + id,
    method: 'delete'
  })
}

// 导出住院治疗处方
export function exportPrescription(query) {
  return request({
    url: '/medical/prescription/export',
    method: 'get',
    params: query
  })
}