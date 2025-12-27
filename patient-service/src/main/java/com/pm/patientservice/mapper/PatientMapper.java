package com.pm.patientservice.mapper;

import com.pm.patientservice.dto.PatientRequestDTO;
import com.pm.patientservice.dto.PatientResponseDTO;
import com.pm.patientservice.model.Patient;

import java.time.LocalDate;

public class PatientMapper {

    public static PatientResponseDTO toDTO(Patient patient) {
        if (patient == null) {
            return null;
        }

        PatientResponseDTO dto = new PatientResponseDTO();
        dto.setId(patient.getId() != null ? patient.getId().toString() : null);
        dto.setName(patient.getName());
        dto.setEmail(patient.getEmail());
        dto.setAddress(patient.getAddress());
        // Convert LocalDate to String - no need to call toString() on the result
        dto.setDateOfBirth(patient.getDateOfBirth() != null ? patient.getDateOfBirth().toString() : null);

        return dto;
    }

    public static Patient toEntity(PatientResponseDTO dto) {
        if (dto == null) {
            return null;
        }

        Patient patient = new Patient();
        // Add conversion logic if needed
        return patient;
    }

    public static Patient toModel(PatientRequestDTO patientRequestDTO) {
        if (patientRequestDTO == null) {
            return null;
        }

        Patient patient = new Patient();
        patient.setName(patientRequestDTO.getName());
        patient.setEmail(patientRequestDTO.getEmail());
        patient.setAddress(patientRequestDTO.getAddress());
        patient.setDateOfBirth(LocalDate.parse(patientRequestDTO.getDateOfBirth()));
        patient.setRegisteredDate(LocalDate.parse(patientRequestDTO.getRegisteredDate()));

        return patient;
    }
}