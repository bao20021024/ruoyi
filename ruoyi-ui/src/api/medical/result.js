import request from '@/utils/request'

// 查询医生看病结果列表
export function listResult(query) {
  return request({
    url: '/medical/result/list',
    method: 'get',
    params: query
  })
}

// 查询医生看病结果详细
export function getResult(opDoctorResultId) {
  return request({
    url: '/medical/result/' + opDoctorResultId,
    method: 'get'
  })
}

// 新增医生看病结果
export function addResult(data) {
  return request({
    url: '/medical/result',
    method: 'post',
    data: data
  })
}

// 修改医生看病结果
export function updateResult(data) {
  return request({
    url: '/medical/result',
    method: 'put',
    data: data
  })
}

// 删除医生看病结果
export function delResult(opDoctorResultId) {
  return request({
    url: '/medical/result/' + opDoctorResultId,
    method: 'delete'
  })
}

// 导出医生看病结果
export function exportResult(query) {
  return request({
    url: '/medical/result/export',
    method: 'get',
    params: query
  })
}