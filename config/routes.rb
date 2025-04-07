Rails.application.routes.draw do
  get "prolog", to: "prolog#new"
  post "prolog/execute", to: "prolog#execute", as: "prolog_execute"
  get "prolog/result", to: "prolog#result", as: "prolog_result"
  root "prolog#new"
end
