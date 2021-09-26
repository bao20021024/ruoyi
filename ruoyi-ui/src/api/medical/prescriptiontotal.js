import request from '@/utils/request'

// 查询住院治疗处方总列表
export function listPrescriptiontotal(query) {
  return request({
    url: '/medical/prescriptiontotal/list',
    method: 'get',
    params: query
  })
}

// 查询住院治疗处方总详细
export function getPrescriptiontotal(id) {
  return request({
    url: '/medical/prescriptiontotal/' + id,
    method: 'get'
  })
}

// 新增住院治疗处方总
export function addPrescriptiontotal(data) {
  return request({
    url: '/medical/prescriptiontotal',
    method: 'post',
    data: data
  })
}

// 修改住院治疗处方总
export function updatePrescriptiontotal(data) {
  return request({
    url: '/medical/prescriptiontotal',
    method: 'put',
    data: data
  })
}

// 删除住院治疗处方总
export function delPrescriptiontotal(id) {
  return request({
    url: '/medical/prescriptiontotal/' + id,
    method: 'delete'
  })
}

// 导出住院治疗处方总
export function exportPrescriptiontotal(query) {
  return request({
    url: '/medical/prescriptiontotal/export',
    method: 'get',
    params: query
  })
}