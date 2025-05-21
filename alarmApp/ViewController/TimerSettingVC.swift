//
//  TimerSettingVC.swift
//  alarmApp
//
//  Created by 김은서 on 5/21/25.
//

import UIKit
import SnapKit

class TimerSettingVC: UIViewController {
    
    let datePicker: UIDatePicker = {
        let datePicker = UIDatePicker()
        datePicker.datePickerMode = .countDownTimer
        datePicker.backgroundColor = .clear
        datePicker.tintColor = .white
        return datePicker
    }()
    
    let presetButtonStackView: UIStackView = {
        let label = UILabel()
        label.text = "프리셋"
        label.font = .systemFont(ofSize: 17)
        label.textColor = .white
        
        let button1 = UIButton()
        button1.backgroundColor = .sub1
        button1.setTitle("1분", for: .normal)
        button1.layer.cornerRadius = 25
        button1.clipsToBounds = true
        button1.snp.makeConstraints { $0.size.equalTo(50) }
        
        let button2 = UIButton()
        button2.backgroundColor = .sub1
        button2.setTitle("2분", for: .normal)
        button2.layer.cornerRadius = 25
        button2.clipsToBounds = true
        button2.snp.makeConstraints { $0.size.equalTo(50) }
        
        let button3 = UIButton()
        button3.backgroundColor = .sub1
        button3.setTitle("3분", for: .normal)
        button3.layer.cornerRadius = 25
        button3.clipsToBounds = true
        button3.snp.makeConstraints { $0.size.equalTo(50) }
        
        let button4 = UIButton()
        button4.backgroundColor = .sub1
        button4.setTitle("5분", for: .normal)
        button4.layer.cornerRadius = 25
        button4.clipsToBounds = true
        button4.snp.makeConstraints { $0.size.equalTo(50) }
        
        let button5 = UIButton()
        button5.backgroundColor = .sub1
        button5.setTitle("10분", for: .normal)
        button5.layer.cornerRadius = 25
        button5.clipsToBounds = true
        button5.snp.makeConstraints { $0.size.equalTo(50) }
        
        let horizontalStackView = UIStackView(arrangedSubviews: [button1, button2, button3, button4, button5])
        horizontalStackView.axis = .horizontal
        horizontalStackView.spacing = 8
        horizontalStackView.distribution = .equalSpacing
        horizontalStackView.alignment = .center
        
        let verticalStackView = UIStackView(arrangedSubviews: [label, horizontalStackView])
        verticalStackView.axis = .vertical
        verticalStackView.spacing = 10
        verticalStackView.backgroundColor = UIColor(red: 217, green: 217, blue: 217, alpha: 0.1)
        
        return verticalStackView
    }()
    
    let soundStackView: UIStackView = {
        let label = UILabel()
        label.text = "사운드"
        label.font = .systemFont(ofSize: 17)
        label.textColor = .white
        
        let soundLabel = UILabel()
        soundLabel.text = "소리"
        soundLabel.font = .systemFont(ofSize: 17)
        soundLabel.textColor = .white
        let soundSwitch = UISwitch()
        soundSwitch.onTintColor = .sub1
        
        let soundStackView = UIStackView(arrangedSubviews: [soundLabel, soundSwitch])
        soundStackView.axis = .horizontal
        soundStackView.distribution = .fillEqually
        soundStackView.spacing = 8
        
        let vibrateLabel = UILabel()
        vibrateLabel.text = "진동"
        vibrateLabel.font = .systemFont(ofSize: 17)
        vibrateLabel.textColor = .white
        let vibrateSwitch = UISwitch()
        vibrateSwitch.onTintColor = .sub1
        
        let vibrateStackView = UIStackView(arrangedSubviews: [vibrateLabel, vibrateSwitch])
        vibrateStackView.axis = .horizontal
        vibrateStackView.distribution = .fillEqually
        vibrateStackView.spacing = 8
        
        let horizontalStackView = UIStackView(arrangedSubviews: [soundStackView, vibrateStackView])
        horizontalStackView.axis = .horizontal
        horizontalStackView.distribution = .fillEqually
        horizontalStackView.spacing = 16
        
        let verticalStackView = UIStackView(arrangedSubviews: [label, horizontalStackView])
        verticalStackView.axis = .vertical
        verticalStackView.spacing = 4
        
        return verticalStackView
    }()
    
    let labelStackView: UIStackView = {
        let label = UILabel()
        label.text = "라벨"
        label.font = .systemFont(ofSize: 17)
        label.textColor = .white
        
        let textField = UITextField()
        textField.borderStyle = .roundedRect
        textField.textAlignment = .center
        textField.textColor = .black
        textField.backgroundColor = .font2
        
        let stackView = UIStackView(arrangedSubviews: [label, textField])
        stackView.axis = .vertical
        stackView.spacing = 8

        return stackView
    }()
    
    let startButton: UIButton = {
        let button = UIButton()
        button.setTitle("실행", for: .normal)
        button.setTitleColor(.backgrond, for: .normal)
        button.backgroundColor = .sub1
        return button
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        configureUI()
    }
    
    func configureUI() {
        view.backgroundColor = .backgrond
        
        [datePicker, presetButtonStackView, soundStackView, labelStackView, startButton].forEach {
            view.addSubview($0)
        }
        
        datePicker.snp.makeConstraints {
            $0.leading.trailing.equalToSuperview().inset(60)
            $0.top.equalToSuperview().offset(90)
        }
        
        presetButtonStackView.snp.makeConstraints {
            $0.top.equalTo(datePicker.snp.bottom).offset(37)
            $0.leading.trailing.equalToSuperview().inset(12)
        }
        
        soundStackView.snp.makeConstraints {
            $0.top.equalTo(presetButtonStackView.snp.bottom).offset(22)
            $0.leading.trailing.equalToSuperview().inset(12)
        }
        
        labelStackView.snp.makeConstraints {
            $0.top.equalTo(soundStackView.snp.bottom).offset(22)
            $0.leading.trailing.equalToSuperview().inset(12)
        }
        
        startButton.snp.makeConstraints {
            $0.top.equalTo(labelStackView.snp.bottom).offset(22)
            $0.leading.trailing.equalToSuperview().inset(12)
        }
    }
}

