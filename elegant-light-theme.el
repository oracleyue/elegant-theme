;;; elegant-light-theme.el --- A very minimal but elegant and consistent theme -*- lexical-binding: t; -*-
;;; Copyright (C) 2020 Nicolas P. Rougier and Nicolò Zorzetto
;;; -------------------------------------------------------------------
;;; Authors: Nicolas P. Rougier and Nicolò Zorzetto
;;; Modified by oracleyue
;;; -------------------------------------------------------------------
;;; URL: https://github.com/rougier/elegant-emacs

(deftheme elegant-light
  "A simple yet elegant theme for emacs.")

;; Apply faces
(let ((class '((class color) (min-colors 88) (background light)))
      (bg           "#ffffff")
      (fg           "#333333")
      (fg-critical  "#ffffff")
      (bg-critical  "#ff6347")
      (fg-popout    "#ffa07a")
      (fg-strong    "#333333")
      (fg-salient   "#00008b")
      (fg-faded     "#999999")
      (bg-subtle    "#f0f0f0"))
  (apply 'custom-theme-set-faces 'elegant-light
         (mapcar
          (lambda (x) `(,(car x) ((,class ,(cdr x)))))
          `(;; Base
            (default       :background ,bg          :foreground ,fg)
            (face-critical :foreground ,fg-critical :background ,bg-critical)
            (face-popout   :foreground ,fg-popout)
            (face-strong   :foreground ,fg-strong   :weight regular)
            (face-salient  :foreground ,fg-salient  :weight light)
            (face-faded    :foreground ,fg-faded    :weight light)
            (face-subtle   :background ,bg-subtle)

            (face-normal   :inherit default)

            ;; Structural
            (bold              :inherit                       face-strong)
            (italic            :inherit                        face-faded)
            (bold-italic       :inherit                       face-strong)
            (region            :inherit                       face-subtle)
            (highlight         :inherit                       face-subtle)
            (fixed-pitch       :inherit                           default)
            (fixed-pitch-serif :inherit                           default)
            (variable-pitch    :inherit                           default)
            (cursor            :inherit                           default)

            ;; Semantic
            (shadow            :inherit                        face-faded)
            (success           :inherit                      face-salient)
            (warning           :inherit                       face-popout)
            (error             :inherit                     face-critical)

            ;; General
            (buffer-menu-buffer    :inherit                       face-strong)
            (minibuffer-prompt     :inherit                       face-strong)
            (link                  :inherit                      face-salient)
            (fringe                :inherit                        face-faded)
            (isearch               :inherit                       face-strong)
            (isearch-fail          :inherit                        face-faded)
            (lazy-highlight        :inherit                       face-subtle)
            (trailing-whitespace   :inherit                       face-subtle)
            (show-paren-match      :inherit                       face-popout)
            (show-paren-mismatch   :inherit                       face-normal)
            (tooltip               :height 0.85)

            ;; Programming
            (font-lock-comment-face        :inherit                 face-faded)
            (font-lock-doc-face            :inherit                 face-faded)
            (font-lock-string-face         :inherit                face-popout)
            (font-lock-constant-face       :inherit               face-salient)
            (font-lock-warning-face        :inherit                face-popout)
            (font-lock-function-name-face  :inherit                face-strong)
            (font-lock-variable-name-face  :inherit                face-strong)
            (font-lock-builtin-face        :inherit               face-salient)
            (font-lock-type-face           :inherit               face-salient)
            (font-lock-keyword-face        :inherit               face-salient)

            ;; Documentation
            (info-menu-header   :inherit                         face-strong)
            (info-header-node   :inherit                         face-normal)
            (Info-quoted        :inherit                          face-faded)
            (info-title-1       :inherit                         face-strong)
            (info-title-2       :inherit                         face-strong)
            (info-title-3       :inherit                         face-strong)
            (info-title-4       :inherit                         face-strong)

            ;; Bookmarks
            (bookmark-menu-heading  :inherit                     face-strong)
            (bookmark-menu-bookmark :inherit                    face-salient)


            ;; Message
            (message-cited-text         :inherit                  face-faded)
            (message-header-cc          :inherit                     default)
            (message-header-name        :inherit                 face-strong)
            (message-header-newsgroups  :inherit                     default)
            (message-header-other       :inherit                     default)
            (message-header-subject     :inherit                face-salient)
            (message-header-to          :inherit                face-salient)
            (message-header-xheader     :inherit                     default)
            (message-mml                :inherit                 face-popout)
            (message-separator          :inherit                  face-faded)

            ;; Outline
            (outline-1  :inherit                                 face-strong)
            (outline-2  :inherit                                 face-strong)
            (outline-3  :inherit                                 face-strong)
            (outline-4  :inherit                                 face-strong)
            (outline-5  :inherit                                 face-strong)
            (outline-6  :inherit                                 face-strong)
            (outline-7  :inherit                                 face-strong)
            (outline-8  :inherit                                 face-strong)

            ;; Interface ("cus-edit")
            (widget-field              :inherit                  face-subtle)
            (widget-button             :inherit                  face-strong)
            (widget-single-line-field  :inherit                  face-subtle)
            (custom-group-subtitle     :inherit                  face-strong)
            (custom-group-tag          :inherit                  face-strong)
            (custom-group-tag-1        :inherit                  face-strong)
            (custom-comment            :inherit                   face-faded)
            (custom-comment-tag        :inherit                   face-faded)
            (custom-changed            :inherit                 face-salient)
            (custom-modified           :inherit                 face-salient)
            (custom-face-tag           :inherit                  face-strong)
            (custom-variable-tag       :inherit                      default)
            (custom-invalid            :inherit                  face-popout)
            (custom-visibility         :inherit                 face-salient)
            (custom-state              :inherit                 face-salient)
            (custom-link               :inherit                 face-salient)

            ;; Package
            (package-description        :inherit                     default)
            (package-help-section-name  :inherit                     default)
            (package-name               :inherit                face-salient)
            (package-status-avail-obso  :inherit                  face-faded)
            (package-status-available   :inherit                     default)
            (package-status-built-in    :inherit                face-salient)
            (package-status-dependency  :inherit                face-salient)
            (package-status-disabled    :inherit                  face-faded)
            (package-status-external    :inherit                     default)
            (package-status-held        :inherit                     default)
            (package-status-incompat    :inherit                  face-faded)
            (package-status-installed   :inherit                face-salient)
            (package-status-new         :inherit                     default)
            (package-status-unsigned    :inherit                     default)

            ;; Flyspell
            (flyspell-duplicate :inherit                        face-popout)
            (flyspell-incorrect :inherit                        face-popout)

            ;; Ido
            (ido-first-match :inherit                           face-salient)
            (ido-only-match  :inherit                             face-faded)
            (ido-subdir      :inherit                            face-strong)

            ;; Diff
            (diff-header         :inherit                         face-faded)
            (diff-file-header    :inherit                        face-strong)
            (diff-context        :inherit                            default)
            (diff-removed        :inherit                         face-faded)
            (diff-changed        :inherit                        face-popout)
            (diff-added          :inherit                       face-salient)
            (diff-refine-added   :inherit                        face-strong)
            (diff-refine-changed :inherit                        face-popout)
            (diff-refine-removed :inherit       face-faded :strike-through t)

            ;; Term
            (term-bold          :inherit    face-strong)
            (term-color-black   :inherit    default)
            (term-color-white   :foreground "white"   :background "white")
            (term-color-blue    :foreground "#42A5F5" :background "#BBDEFB")
            (term-color-cyan    :foreground "#26C6DA" :background "#B2EBF2")
            (term-color-green   :foreground "#66BB6A" :background "#C8E6C9")
            (term-color-magenta :foreground "#AB47BC" :background "#E1BEE7")
            (term-color-red     :foreground "#EF5350" :background "#FFCDD2")
            (term-color-yellow  :foreground "#FFEE58" :background "#FFF9C4")

            ;; org-agendas
            (org-agenda-calendar-event   :inherit                 default)
            (org-agenda-calendar-sexp    :inherit                 face-faded)
            (org-agenda-clocking         :inherit                 face-faded)
            (org-agenda-column-dateline  :inherit                 face-faded)
            (org-agenda-current-time     :inherit                 face-faded)
            (org-agenda-date             :inherit               face-salient)
            (org-agenda-date-today       :inherit                face-strong)
            (org-agenda-date-weekend     :inherit                 face-faded)
            (org-agenda-diary            :inherit                 face-faded)
            (org-agenda-dimmed-todo-face :inherit                 face-faded)
            (org-agenda-done             :inherit                 face-faded)
            (org-agenda-filter-category  :inherit                 face-faded)
            (org-agenda-filter-effort    :inherit                 face-faded)
            (org-agenda-filter-regexp    :inherit                 face-faded)
            (org-agenda-filter-tags      :inherit                 face-faded)
            (org-agenda-restriction-lock :inherit                 face-faded)
            (org-agenda-structure        :inherit                 face-faded)

            ;; org mode
            (org-archived                   :inherit              face-faded)
            (org-block                      :inherit              face-faded)
            (org-block-begin-line           :inherit              face-faded)
            (org-block-end-line             :inherit              face-faded)
            (org-checkbox                   :inherit              face-faded)
            (org-checkbox-statistics-done   :inherit              face-faded)
            (org-checkbox-statistics-todo   :inherit              face-faded)
            (org-clock-overlay              :inherit              face-faded)
            (org-code                       :inherit              face-faded)
            (org-column                     :inherit              face-faded)
            (org-column-title               :inherit              face-faded)
            (org-date                       :inherit              face-faded)
            (org-date-selected              :inherit              face-faded)
            (org-default                    :inherit              face-faded)
            (org-document-info              :inherit              face-faded)
            (org-document-info-keyword      :inherit              face-faded)
            (org-document-title             :inherit              face-faded)
            (org-done                       :inherit                 default)
            (org-drawer                     :inherit              face-faded)
            (org-ellipsis                   :inherit              face-faded)
            (org-footnote                   :inherit              face-faded)
            (org-formula                    :inherit              face-faded)
            (org-headline-done              :inherit              face-faded)
            (org-latex-and-related          :inherit              face-faded)
            (org-level-1                    :inherit             face-strong)
            (org-level-2                    :inherit             face-strong)
            (org-level-3                    :inherit             face-strong)
            (org-level-4                    :inherit             face-strong)
            (org-level-5                    :inherit             face-strong)
            (org-level-6                    :inherit             face-strong)
            (org-level-7                    :inherit             face-strong)
            (org-level-8                    :inherit             face-strong)
            (org-link                       :inherit            face-salient)
            (org-list-dt                    :inherit              face-faded)
            (org-macro                      :inherit              face-faded)
            (org-meta-line                  :inherit              face-faded)
            (org-mode-line-clock            :inherit              face-faded)
            (org-mode-line-clock-overrun    :inherit              face-faded)
            (org-priority                   :inherit              face-faded)
            (org-property-value             :inherit              face-faded)
            (org-quote                      :inherit              face-faded)
            (org-scheduled                  :inherit              face-faded)
            (org-scheduled-previously       :inherit              face-faded)
            (org-scheduled-today            :inherit              face-faded)
            (org-sexp-date                  :inherit              face-faded)
            (org-special-keyword            :inherit              face-faded)
            (org-table                      :inherit                 default)
            (org-tag                        :inherit              face-faded)
            (org-tag-group                  :inherit              face-faded)
            (org-target                     :inherit              face-faded)
            (org-time-grid                  :inherit              face-faded)
            (org-todo                       :inherit             face-popout)
            (org-upcoming-deadline          :inherit              face-faded)
            (org-verbatim                   :inherit              face-faded)
            (org-verse                      :inherit              face-faded)
            (org-warning                    :inherit             face-popout)
            ;; (setq org-hide-emphasis-markers t)

            ;; Mu4e
            (mu4e-attach-number-face          :inherit           face-strong)
            (mu4e-cited-1-face                :inherit            face-faded)
            (mu4e-cited-2-face                :inherit            face-faded)
            (mu4e-cited-3-face                :inherit            face-faded)
            (mu4e-cited-4-face                :inherit            face-faded)
            (mu4e-cited-5-face                :inherit            face-faded)
            (mu4e-cited-6-face                :inherit            face-faded)
            (mu4e-cited-7-face                :inherit            face-faded)
            (mu4e-compose-header-face         :inherit            face-faded)
            (mu4e-compose-separator-face      :inherit            face-faded)
            (mu4e-contact-face                :inherit          face-salient)
            (mu4e-context-face                :inherit            face-faded)
            (mu4e-draft-face                  :inherit            face-faded)
            (mu4e-flagged-face                :inherit            face-faded)
            (mu4e-footer-face                 :inherit            face-faded)
            (mu4e-forwarded-face              :inherit            face-faded)
            (mu4e-header-face                 :inherit               default)
            (mu4e-header-highlight-face       :inherit           face-subtle)
            (mu4e-header-key-face             :inherit           face-strong)
            (mu4e-header-marks-face           :inherit            face-faded)
            (mu4e-header-title-face           :inherit           face-strong)
            (mu4e-header-value-face           :inherit               default)
            (mu4e-highlight-face              :inherit           face-popout)
            (mu4e-link-face                   :inherit          face-salient)
            (mu4e-modeline-face               :inherit            face-faded)
            (mu4e-moved-face                  :inherit            face-faded)
            (mu4e-ok-face                     :inherit            face-faded)
            (mu4e-region-code                 :inherit            face-faded)
            (mu4e-replied-face                :inherit          face-salient)
            (mu4e-special-header-value-face   :inherit               default)
            (mu4e-system-face                 :inherit            face-faded)
            (mu4e-title-face                  :inherit           face-strong)
            (mu4e-trashed-face                :inherit            face-faded)
            (mu4e-unread-face                 :inherit           face-strong)
            (mu4e-url-number-face             :inherit            face-faded)
            (mu4e-view-body-face              :inherit               default)
            (mu4e-warning-face                :inherit            face-faded)

            ;; ---------------- END package faces ----------------
            ))))


(provide 'elegant-light-theme)
;;; elegant-light-theme.el ends here
