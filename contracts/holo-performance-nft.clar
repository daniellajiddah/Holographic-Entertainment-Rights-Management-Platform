;; Holographic Performance Rights NFT Contract

(define-non-fungible-token holo-performance uint)

(define-data-var last-token-id uint u0)

(define-map performance-data
  { performance-id: uint }
  {
    creator: principal,
    title: (string-ascii 64),
    description: (string-utf8 256),
    duration: uint,
    creation-date: uint
  }
)

(define-constant contract-owner tx-sender)
(define-constant err-owner-only (err u100))
(define-constant err-not-found (err u101))
(define-constant err-unauthorized (err u102))

(define-public (mint-performance (title (string-ascii 64)) (description (string-utf8 256)) (duration uint))
  (let
    (
      (new-performance-id (+ (var-get last-token-id) u1))
    )
    (try! (nft-mint? holo-performance new-performance-id tx-sender))
    (map-set performance-data
      { performance-id: new-performance-id }
      {
        creator: tx-sender,
        title: title,
        description: description,
        duration: duration,
        creation-date: block-height
      }
    )
    (var-set last-token-id new-performance-id)
    (ok new-performance-id)
  )
)

(define-public (transfer-performance (performance-id uint) (recipient principal))
  (begin
    (try! (nft-transfer? holo-performance performance-id tx-sender recipient))
    (ok true)
  )
)

(define-read-only (get-performance-data (performance-id uint))
  (map-get? performance-data { performance-id: performance-id })
)

(define-read-only (get-performance-owner (performance-id uint))
  (nft-get-owner? holo-performance performance-id)
)
