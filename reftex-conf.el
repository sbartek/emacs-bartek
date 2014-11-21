(add-hook 'LaTeX-mode-hook 'turn-on-reftex)   ; with AUCTeX LaTeX mode

;;AUCTeX calls reftex-label to insert labels
(setq reftex-plug-into-AUCTeX t)