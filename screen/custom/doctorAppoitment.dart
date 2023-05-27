// ignore: file_names
class DoctorAppointment {
  final String date;
  final String time;
  final String doctorName;
  final String jobDetails;

  DoctorAppointment({
    required this.date,
    required this.time,
    required this.doctorName,
    required this.jobDetails,
  });
}

List<DoctorAppointment> doctorAppointments = [];

void addDummyData() {
  doctorAppointments.add(
    DoctorAppointment(
      date: "2023-05-25",
      time: "09:00",
      doctorName: "Dr. A",
      jobDetails: "Health checkup",
    ),
  );
  doctorAppointments.add(
    DoctorAppointment(
      date: "2023-05-25",
      time: "10:30",
      doctorName: "Dr. B",
      jobDetails: "Consultation",
    ),
  );
  doctorAppointments.add(
    DoctorAppointment(
      date: "2023-05-26",
      time: "11:00",
      doctorName: "Dr. C",
      jobDetails: "Follow-up",
    ),
  );
  // Add more dummy data as needed
}
