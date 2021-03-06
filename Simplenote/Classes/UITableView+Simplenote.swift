import Foundation


// MARK: - UITableView Simplenote Methods
//
extension UITableView {

    /// Applies Simplenote's Style for Grouped TableVIews
    ///
    @objc
    func applySimplenoteGroupedStyle() {
        self.backgroundColor = .simplenoteTableViewBackgroundColor
        self.separatorColor = .simplenoteDividerColor
    }

    /// Applies Simplenote's Style for Plain TableVIews
    ///
    @objc
    func applySimplenotePlainStyle() {
        backgroundColor = .simplenoteBackgroundColor
        separatorColor = .simplenoteDividerColor
    }

    /// Scrolls to the top of the TableView
    ///
    @objc(scrollToTopWithAnimation:)
    func scrollToTop(animated: Bool) {
        var newOffset = contentOffset
        newOffset.y = adjustedContentInset.top * -1
        setContentOffset(newOffset, animated: animated)
    }
}
