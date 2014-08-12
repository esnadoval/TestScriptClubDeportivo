/* ========================================================================
 * Copyright 2014 testers
 *
 * Licensed under the MIT, The MIT License (MIT)
 * Copyright (c) 2014 testers

Permission is hereby granted, free of charge, to any person obtaining a copy
of this software and associated documentation files (the "Software"), to deal
in the Software without restriction, including without limitation the rights
to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
copies of the Software, and to permit persons to whom the Software is
furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in
all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
THE SOFTWARE.
 * ========================================================================


Source generated by CrudMaker version 1.0.0.201408112050

*/

package co.edu.uniandes.csw.testers.member.master.persistence.api;

import co.edu.uniandes.csw.testers.member.master.persistence.entity.MemberaddressesEntity;
import co.edu.uniandes.csw.testers.address.logic.dto.AddressDTO;
import co.edu.uniandes.csw.testers.member.master.persistence.entity.MemberrelativesEntity;
import co.edu.uniandes.csw.testers.member.logic.dto.MemberDTO;
import co.edu.uniandes.csw.testers.member.master.persistence.entity.MembersportsEntity;
import co.edu.uniandes.csw.testers.sport.logic.dto.SportDTO;
import co.edu.uniandes.csw.testers.member.master.logic.dto.MemberMasterDTO;
import java.util.List;

public interface _IMemberMasterPersistence {

	public MemberMasterDTO getMember(Long memberId);
	
	
    public MemberaddressesEntity createMemberaddressesEntity(MemberaddressesEntity entity);
    public void deleteMemberaddressesEntity(Long memberId, Long addressesId);
    public List<AddressDTO> getMemberaddressesEntityList(Long memberId);
    public MemberrelativesEntity createMemberrelativesEntity(MemberrelativesEntity entity);
    public void deleteMemberrelativesEntity(Long memberId, Long relativesId);
    public List<MemberDTO> getMemberrelativesEntityList(Long memberId);
    public MembersportsEntity createMembersportsEntity(MembersportsEntity entity);
    public void deleteMembersportsEntity(Long memberId, Long sportsId);
    public List<SportDTO> getMembersportsEntityList(Long memberId);
   
  
}
