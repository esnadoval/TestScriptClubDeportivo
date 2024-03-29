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

package co.edu.uniandes.csw.testers.member.master.persistence.entity;

import co.edu.uniandes.csw.testers.address.persistence.entity.AddressEntity;
import co.edu.uniandes.csw.testers.member.persistence.entity.MemberEntity;
import java.io.Serializable;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.IdClass;
import javax.persistence.ManyToOne;
import javax.persistence.NamedQueries;
import javax.persistence.NamedQuery;
import javax.persistence.PrimaryKeyJoinColumn; 
import org.eclipse.persistence.annotations.JoinFetch;

@Entity
@IdClass(MemberaddressesEntityId.class)
@NamedQueries({
    @NamedQuery(name = "MemberaddressesEntity.getByMasterId", query = "SELECT  u FROM MemberaddressesEntity u WHERE u.memberId=:memberId"),
    @NamedQuery(name = "MemberaddressesEntity.deleteMemberaddressesEntity", query = "DELETE FROM MemberaddressesEntity u WHERE u.memberId=:memberId and  u.addressesId=:addressesId")
})
public class MemberaddressesEntity implements Serializable {

    @Id
    @Column(name = "memberId")
    private Long memberId;
    @Id
    @Column(name = "addressesId")
    private Long addressesId;
    @ManyToOne
    @PrimaryKeyJoinColumn(name = "memberId", referencedColumnName = "id")
    @JoinFetch
    private AddressEntity memberIdEntity;
    @ManyToOne
    @PrimaryKeyJoinColumn(name = "addressesId", referencedColumnName = "id")
    @JoinFetch
    private AddressEntity addressesIdEntity; 

    public MemberaddressesEntity() {
    }

    public MemberaddressesEntity(Long memberId, Long addressesId) {
        this.memberId =memberId;
        this.addressesId = addressesId;
    }

    public Long getMemberId() {
        return memberId;
    }

    public void setMemberId(Long memberId) {
        this.memberId = memberId;
    }

    public Long getAddressesId() {
        return addressesId;
    }

    public void setAddressesId(Long addressesId) {
        this.addressesId = addressesId;
    }

    public AddressEntity getMemberIdEntity() {
        return memberIdEntity;
    }

    public void setMemberIdEntity(AddressEntity memberIdEntity) {
        this.memberIdEntity = memberIdEntity;
    }

    public AddressEntity getAddressesIdEntity() {
        return addressesIdEntity;
    }

    public void setAddressesIdEntity(AddressEntity addressesIdEntity) {
        this.addressesIdEntity = addressesIdEntity;
    }

}
