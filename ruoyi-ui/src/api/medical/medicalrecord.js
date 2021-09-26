import request from '@/utils/request'

// 查询门诊病历列表
export function listMedicalrecord(query) {
  return request({
    url: '/medical/medicalrecord/list',
    method: 'get',
    params: query
  })
}

// 查询门诊病历详细
export function getMedicalrecord(id) {
  return request({
    url: '/medical/medicalrecord/' + id,
    method: 'get'
  })
}

// 新增门诊病历
export function addMedicalrecord(data) {
  return request({
    url: '/medical/medicalrecord',
    method: 'post',
    data: data
  })
}

// 修改门诊病历
export function updateMedicalrecord(data) {
  return request({
    url: '/medical/medicalrecord',
    method: 'put',
    data: data
  })
}

// 删除门诊病历
export function delMedicalrecord(id) {
  return request({
    url: '/medical/medicalrecord/' + id,
    method: 'delete'
  })
}

// 导出门诊病历
export function exportMedicalrecord(query) {
  return request({
    url: '/medical/medicalrecord/export',
    method: 'get',
    params: query
  })
}