# GSoC 2021 QML-HEP Evaluation Test
A dedicated submission repository for the Google Summer of Code 2021 [QML-HEP Projects](https://ml4sci.org/gsoc/projects/2021/project_QMLHEP.html).
The tasks description can be read [here](https://drive.google.com/file/d/1H2VMVXLmoxLlRAu5bINNKs8R93SN20zL/view).

This completed test is submitted as an application for project ideas:
1. [Quantum Neural Networks for High Energy Physics Analysis at the LHC](https://ml4sci.org/gsoc/2021/proposal_QMLHEP2.html)
2. [Implementation of Quantum Generative Models to Perform High Energy Physics Analysis at the LHC](https://ml4sci.org/gsoc/2021/proposal_QMLHEP1.html) <br>
both from [Machine Learning for Science (ML4SCI)](https://summerofcode.withgoogle.com/organizations/6508146341707776/).

## General Approach in Tackling the Problem
- **Task I** is trivial and straightforward. The only close-ended task in the test.
- **For Task II, III, and IV**: The first step I always did was familiarize myself with the recent works related to the tasks, primarily by reading research papers and its code implementation. After that, I tried to find exciting ideas to be explored that are also answering the tasks' problem statement since the tasks are open-ended. These ideas usually either came from my experience or other research papers. Then I implemented these ideas into code and ran it. The results will then be analyzed and discussed.
- **For Task V**: I mainly talked about my previous research experience related to the project ideas that I am applying for or quantum machine learning in general. The suggestions made are also primarily from my earlier experience in quantum machine learning.

## Platform
All tasks are done in the Google Colab platform.

## Table of Contents
- Task I: Quantum Computing Part ([Notebook file](https://github.com/eraraya-ricardo/qml-hep-gsoc-2021/blob/main/QML_HEP_GSoC_2021_Tasks_I_Quantum_Computing.ipynb), [nbviewer](https://nbviewer.jupyter.org/github/eraraya-ricardo/qml-hep-gsoc-2021/blob/main/QML_HEP_GSoC_2021_Tasks_I_Quantum_Computing.ipynb))
- Task II: Quantum Generative Adversarial Network (QGAN) Part ([Notebook file](https://github.com/eraraya-ricardo/qml-hep-gsoc-2021/blob/main/QML_HEP_GSoC_2021_Tasks_II_QGAN.ipynb), [![Google Colab](https://colab.research.google.com/assets/colab-badge.svg)](https://colab.research.google.com/drive/1U-mW5-sagabK_MYHXwIOkbDIXkafW_5a?usp=sharing))
- Task III: Quantum Convolutional Neural Network (QCNN) Part ([Notebook file](https://github.com/eraraya-ricardo/qml-hep-gsoc-2021/blob/main/QML_HEP_GSoC_2021_Tasks_III_QCNN.ipynb), [![Google Colab](https://colab.research.google.com/assets/colab-badge.svg)](https://colab.research.google.com/drive/1XiS9Q0UncLXk6eVkKyQayV_-Fj56_9Py?usp=sharing))
- Task IV: Classical Graph Neural Network (GNN) Part ([Notebook file](https://github.com/eraraya-ricardo/qml-hep-gsoc-2021/blob/main/QML_HEP_GSoC_2021_Tasks_IV_GNN.ipynb), [nbviewer](https://nbviewer.jupyter.org/github/eraraya-ricardo/qml-hep-gsoc-2021/blob/main/QML_HEP_GSoC_2021_Tasks_IV_GNN.ipynb))
- Task V: Open Task Part ([Notebook file](https://github.com/eraraya-ricardo/qml-hep-gsoc-2021/blob/main/QML_HEP_GSoC_2021_Tasks_V_Open_Task.ipynb), [![Google Colab](https://colab.research.google.com/assets/colab-badge.svg)](https://colab.research.google.com/drive/1LYH6WU3cLRP3vzVzAdR9PGAx-Omwgh6O?usp=sharing)) <br>
**Note**: GitHub sometimes failed to render Jupyter Notebook's markdown properly, so in case of that, please use the **nbviewer** or **Google Colab** link to see the notebook in the browser. Some Cirq's circuit plots aren't shown correctly (too long) in nbviewer. The best way to view all the notebooks is by downloading them and open them on your local machine.

## How to Run the Code
1. Download the repository into your local machine.
2. Ensure that your local machine already has the standard machine learning/data science packages (NumPy, pandas, Matplotlib, scikit-learn, TensorFlow), Cirq and SymPy.
3. For every task, the **Notebook file** should be enough by itself. All the other requirements were already inside the notebook in the **pip install** form or already inside the repository folder that is readily accessible.
4. The only things missing are the datasets (since their size is just too large). You can download them from their respective source to your local machine.
5. Please note that you need to make sure all directories (either for loading the dataset or saving the results) in the notebook are already pointed to the correct directories based on your local machine. The directories written in the notebook are my directories in Google Colab.
6. Please feel free to contact my email if you have trouble running the code.

## Closing Remarks
Thanks a lot to all the mentors for the test. I had the opportunity to learn new things related to quantum machine learning and HEP during the process of finishing the test. It was a pleasure to be able to walk through that process. A special thanks to Raphael Koh, who kindly answered all of my questions regarding the test.

<!--[nbviewer](https://nbviewer.jupyter.org/github/eraraya-ricardo/qml-hep-gsoc-2021/blob/main/nbviewer/QML_HEP_GSoC_2021_Tasks_II_QGAN.ipynb)-->
