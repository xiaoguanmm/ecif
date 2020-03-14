package com.gt.ecif.service.impl;

import com.gt.ecif.entity.ResourceInfo;
import com.gt.ecif.mapper.AuthorityMapper;
import com.gt.ecif.mapper.ResourceInfoMapper;
import com.gt.ecif.service.ResourceInfoService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;
import java.util.Map;


/** ClassName:ResourceInfoServiceImpl <br/>
 * Function: TODO ADD FUNCTION. <br/>
 * Reason: TODO ADD REASON. <br/>
 * Date: 2018年3月26日 上午11:34:11 <br/>
 * 
 * @author huxinlong
 * @version */
@Service("resourceInfoService")
public class ResourceInfoServiceImpl implements ResourceInfoService {
	
	@Autowired
	private ResourceInfoMapper resourceInfoMapper;
	@Autowired
	private AuthorityMapper authorityMapper;
	
	@Override
	public List<Map<String, Object>> findMenusByUserPid(String pid) {
		
		List<Map<String, Object>> result = this.resourceInfoMapper.findMenusByUserPid(pid);
		/*admin给予所有权限*/
		
		return result;
	}
	
	@Override
	public List<Map<String, Object>> findAllMenus() {
		
		return this.resourceInfoMapper.findAllMenus();
	}

	/**
	 * 遍历目录列表将菜单按层级展示
	 * @param menuInfo
	 */
	@Override
	@Transactional
	public int addMenu(ResourceInfo menuInfo) {
		return this.resourceInfoMapper.insert(menuInfo);
	}

	@Override
	public String getMaxPidMenu() {
		 return this.resourceInfoMapper.getMaxPidMenu();
	}

	@Override
	@Transactional
	public void reSortRecourceInfo(String parentId, Integer seriesNo,String mathParam) {
		
		this.resourceInfoMapper.reSortRecourceInfo(parentId, seriesNo, mathParam);
		
	}

	@Override
	@Transactional
	public int delMenuByPid(String pid) {
		
		return this.resourceInfoMapper.deleteByPrimaryKey(pid);
	}

	@Override
	@Transactional
	public void updateMenu(ResourceInfo menuInfo) {
		this.resourceInfoMapper.updateByPrimaryKeySelective(menuInfo);
		
	}

	@Override
	@Transactional
	public void updateMenuByParentAndSerierNo(Integer seriesNo,	String parentId, Integer oriSeriesNo) {
		this.resourceInfoMapper.updateMenuByParentAndSerierNo(seriesNo,parentId,oriSeriesNo);
	}

}
