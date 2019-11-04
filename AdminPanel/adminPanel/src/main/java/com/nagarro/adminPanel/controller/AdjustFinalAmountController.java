package com.nagarro.adminPanel.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RestController;

import com.nagarro.adminPanel.dto.UpdatedFinalAmountDTO;
import com.nagarro.adminPanel.services.AdjustFinalAmountServices;

@RestController
public class AdjustFinalAmountController {

	@Autowired
	AdjustFinalAmountServices adjustFinalAmountServices;

	@GetMapping("/adjustFinal/{customerID}/{finalAmountWonLost}")
	public UpdatedFinalAmountDTO updateFinalAmountBalance(@PathVariable String customerID,
			@PathVariable double finalAmountWonLost) {

		UpdatedFinalAmountDTO updatedUserInformation = adjustFinalAmountServices.updateFinalAmountBalance(customerID,
				finalAmountWonLost);

		return updatedUserInformation;

	}

}