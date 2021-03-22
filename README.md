# GSoC 2021 QML-HEP Evaluation Test
A dedicated repository for finishing the Google Summer of Code 2021 [QML-HEP](https://ml4sci.org/gsoc/projects/2021/project_QMLHEP.html) tasks.
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
- Task I: Quantum Computing Part ([Notebook file](), [nbviewer]())
- Task II: Quantum Generative Adversarial Network (QGAN) Part ([Notebook file](), [nbviewer]())
- Task III: Quantum Convolutional Neural Network (QCNN) Part ([Notebook file](), [nbviewer]())
- Task IV: Classical Graph Neural Network (GNN) Part ([Notebook file](), [nbviewer])
- Task V: Open Task Part ([Notebook file](), [nbviewer]())
**Note**: GitHub sometimes failed to render Jupyter Notebook's markdown properly, so in case of that, please use the *nbviewer* link to see the notebook in nbviewer.

## How to Run the Code
1. Download the repository into your local machine.
2. For every task, the >Notebook file< should be enough by itself. All requirements were already inside the notebook in the <pip install> form or already inside the repository folder that is readily accessible.
3. The only things missing are the datasets (since their size is just too large). You can download them from their respective source to your local machine.
4. Please note that you need to make sure all directories (either for loading the dataset or saving the results) in the notebook are already pointed to the correct directories based on your local machine. The directories written in the notebook are my directories in Google Colab.
