//
//  SeparatorRoomTimelineView.swift
//  ElementX
//
//  Created by Stefan Ceriu on 11/03/2022.
//  Copyright © 2022 Element. All rights reserved.
//

import Foundation
import SwiftUI

struct SeparatorRoomTimelineView: View {
    let timelineItem: SeparatorRoomTimelineItem
    
    var body: some View {
        LabelledDivider(label: timelineItem.text)
            .id(timelineItem.id)
    }
}

struct LabelledDivider: View {
    let label: String
    let color: Color

    init(label: String, color: Color = .gray) {
        self.label = label
        self.color = color
    }

    var body: some View {
        HStack {
            line
            Text(label)
                .foregroundColor(color)
                .fixedSize()
            line
        }
    }

    var line: some View {
        VStack { Divider().background(color) }
    }
}

struct SeparatorRoomTimelineView_Previews: PreviewProvider {
    static var previews: some View {
        body
        body.preferredColorScheme(.dark)
    }
    
    @ViewBuilder
    static var body: some View {
        let item = SeparatorRoomTimelineItem(id: UUID().uuidString, text: "This is a separator")
        SeparatorRoomTimelineView(timelineItem: item)
    }
}
