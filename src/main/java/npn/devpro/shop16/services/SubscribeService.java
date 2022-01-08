package npn.devpro.shop16.services;

import org.springframework.stereotype.Service;

import npn.devpro.shop16.entity.SubscribeSQL;

@Service
public class SubscribeService extends BaseService<SubscribeSQL> {

	@Override
	protected Class<SubscribeSQL> clazz() {
		// TODO Auto-generated method stub
		return SubscribeSQL.class;
	}
}
