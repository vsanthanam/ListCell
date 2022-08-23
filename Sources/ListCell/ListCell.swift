// ListCell
// ListCell.swift
//
// MIT License
//
// Copyright (c) 2021 Varun Santhanam
// Permission is hereby granted, free of charge, to any person obtaining a copy
// of this software and associated documentation files (the  Software), to deal
//
// in the Software without restriction, including without limitation the rights
// to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
// copies of the Software, and to permit persons to whom the Software is
// furnished to do so, subject to the following conditions:
//
// The above copyright notice and this permission notice shall be included in all
// copies or substantial portions of the Software.
//
// THE SOFTWARE IS PROVIDED  AS IS, WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
// IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
// FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
// AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
// LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
// OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
// SOFTWARE.

import SwiftUI

public struct ListCell<Icon, Content, Detail>: View where Icon: View, Content: View, Detail: View {

    public init(@ViewBuilder content: @escaping () -> Content,
                @ViewBuilder icon: @escaping () -> Icon,
                badge: Text,
                @ViewBuilder detail: @escaping () -> Detail) {
        self.init(content: content,
                  icon: icon,
                  detail: detail,
                  badgeText: badge)
    }

    public init<Badge>(@ViewBuilder content: @escaping () -> Content,
                       @ViewBuilder icon: @escaping () -> Icon,
                       badge: Badge,
                       @ViewBuilder detail: @escaping () -> Detail) where Badge: StringProtocol {
        self.init(content: content,
                  icon: icon,
                  badge: Text(badge),
                  detail: detail)
    }

    public init(@ViewBuilder content: @escaping () -> Content,
                @ViewBuilder icon: @escaping () -> Icon,
                badge: LocalizedStringKey,
                @ViewBuilder detail: @escaping () -> Detail) {
        self.init(content: content,
                  icon: icon,
                  badge: Text(badge),
                  detail: detail)
    }

    public init(@ViewBuilder content: @escaping () -> Content,
                @ViewBuilder icon: @escaping () -> Icon,
                badge: Int,
                @ViewBuilder detail: @escaping () -> Detail) {
        self.init(content: content,
                  icon: icon,
                  badge: Text(badge.description),
                  detail: detail)
    }

    public init<Title>(_ title: Title,
                       @ViewBuilder icon: @escaping () -> Icon,
                       badge: Text,
                       @ViewBuilder detail: @escaping () -> Detail) where Title: StringProtocol, Content == Text {
        self.init(content: { Text(title) },
                  icon: icon,
                  badge: badge,
                  detail: detail)
    }

    public init(_ title: LocalizedStringKey,
                @ViewBuilder icon: @escaping () -> Icon,
                badge: Text,
                @ViewBuilder detail: @escaping () -> Detail) where Content == Text {
        self.init(content: { Text(title) },
                  icon: icon,
                  badge: badge,
                  detail: detail)
    }

    public init<Badge, Title>(_ title: Title,
                              @ViewBuilder icon: @escaping () -> Icon,
                              badge: Badge,
                              @ViewBuilder detail: @escaping () -> Detail) where Title: StringProtocol, Badge: StringProtocol, Content == Text {
        self.init(title,
                  icon: icon,
                  badge: Text(badge),
                  detail: detail)
    }

    public init(_ title: LocalizedStringKey,
                @ViewBuilder icon: @escaping () -> Icon,
                badge: LocalizedStringKey,
                @ViewBuilder detail: @escaping () -> Detail) where Content == Text {
        self.init(title,
                  icon: icon,
                  badge: Text(badge),
                  detail: detail)
    }

    public init<Title>(_ title: Title,
                       @ViewBuilder icon: @escaping () -> Icon,
                       badge: Int,
                       @ViewBuilder detail: @escaping () -> Detail) where Title: StringProtocol, Content == Text {
        self.init(title,
                  icon: icon,
                  badge: Text(badge.description),
                  detail: detail)
    }

    public init(_ title: LocalizedStringKey,
                @ViewBuilder icon: @escaping () -> Icon,
                badge: Int,
                @ViewBuilder detail: @escaping () -> Detail) where Content == Text {
        self.init(title,
                  icon: icon,
                  badge: Text(badge.description),
                  detail: detail)
    }

    public init(@ViewBuilder content: @escaping () -> Content,
                systemImage name: String,
                badge: Text,
                @ViewBuilder detail: @escaping () -> Detail) where Icon == Image {
        self.init(content: content,
                  icon: { Image(systemName: name) },
                  badge: badge,
                  detail: detail)
    }

    public init<Badge>(@ViewBuilder content: @escaping () -> Content,
                       systemImage name: String,
                       badge: Badge,
                       @ViewBuilder detail: @escaping () -> Detail) where Badge: StringProtocol, Icon == Image {
        self.init(content: content,
                  systemImage: name,
                  badge: Text(badge),
                  detail: detail)
    }

    public init(@ViewBuilder content: @escaping () -> Content,
                systemImage name: String,
                badge: LocalizedStringKey,
                @ViewBuilder detail: @escaping () -> Detail) where Icon == Image {
        self.init(content: content,
                  systemImage: name,
                  badge: Text(badge),
                  detail: detail)
    }

    public init(@ViewBuilder content: @escaping () -> Content,
                systemImage name: String,
                badge: Int,
                @ViewBuilder detail: @escaping () -> Detail) where Icon == Image {
        self.init(content: content,
                  systemImage: name,
                  badge: Text(badge.description),
                  detail: detail)
    }

    public init<Title>(_ title: Title,
                       systemImage name: String,
                       badge: Text,
                       @ViewBuilder detail: @escaping () -> Detail) where Title: StringProtocol, Content == Text, Icon == Image {
        self.init(title,
                  icon: { Icon(systemName: name) },
                  badge: badge,
                  detail: detail)
    }

    public init(_ title: LocalizedStringKey,
                systemImage name: String,
                badge: Text,
                @ViewBuilder detail: @escaping () -> Detail) where Content == Text, Icon == Image {
        self.init(title,
                  icon: { Icon(systemName: name) },
                  badge: badge,
                  detail: detail)
    }

    public init<Badge, Title>(_ title: Title,
                              systemImage name: String,
                              badge: Badge,
                              @ViewBuilder detail: @escaping () -> Detail) where Title: StringProtocol, Badge: StringProtocol, Content == Text, Icon == Image {
        self.init(title,
                  systemImage: name,
                  badge: Text(badge),
                  detail: detail)
    }

    public init(_ title: LocalizedStringKey,
                systemImage name: String,
                badge: LocalizedStringKey,
                @ViewBuilder detail: @escaping () -> Detail) where Content == Text, Icon == Image {
        self.init(title,
                  systemImage: name,
                  badge: Text(badge),
                  detail: detail)
    }

    public init<Title>(_ title: Title,
                       systemImage name: String,
                       badge: Int,
                       @ViewBuilder detail: @escaping () -> Detail) where Title: StringProtocol, Content == Text, Icon == Image {
        self.init(title,
                  systemImage: name,
                  badge: Text(badge.description),
                  detail: detail)
    }

    public init(_ title: LocalizedStringKey,
                systemImage name: String,
                badge: Int,
                @ViewBuilder detail: @escaping () -> Detail) where Content == Text, Icon == Image {
        self.init(title,
                  systemImage: name,
                  badge: Text(badge.description),
                  detail: detail)
    }

    public init(@ViewBuilder content: @escaping () -> Content,
                @ViewBuilder icon: @escaping () -> Icon,
                badge: Text,
                disclosureIndicator: Bool = false) where Detail == AnyView {
        self.init(content: content,
                  icon: icon,
                  badge: badge,
                  detail: { ListCell.buildDetail(disclosureIndicator: disclosureIndicator) })
    }

    public init<Badge>(@ViewBuilder content: @escaping () -> Content,
                       @ViewBuilder icon: @escaping () -> Icon,
                       badge: Badge,
                       disclosureIndicator: Bool = false) where Badge: StringProtocol, Detail == AnyView {
        self.init(content: content,
                  icon: icon,
                  badge: Text(badge),
                  disclosureIndicator: disclosureIndicator)
    }

    public init(@ViewBuilder content: @escaping () -> Content,
                @ViewBuilder icon: @escaping () -> Icon,
                badge: LocalizedStringKey,
                disclosureIndicator: Bool = false) where Detail == AnyView {
        self.init(content: content,
                  icon: icon,
                  badge: Text(badge),
                  disclosureIndicator: disclosureIndicator)
    }

    public init(@ViewBuilder content: @escaping () -> Content,
                @ViewBuilder icon: @escaping () -> Icon,
                badge: Int,
                disclosureIndicator: Bool = false) where Detail == AnyView {
        self.init(content: content,
                  icon: icon,
                  badge: Text(badge.description),
                  disclosureIndicator: disclosureIndicator)
    }

    public init<Title>(_ title: Title,
                       @ViewBuilder icon: @escaping () -> Icon,
                       badge: Text,
                       disclosureIndicator: Bool = false) where Title: StringProtocol, Content == Text, Detail == AnyView {
        self.init(title,
                  icon: icon,
                  badge: badge,
                  detail: { ListCell.buildDetail(disclosureIndicator: disclosureIndicator) })
    }

    public init(_ title: LocalizedStringKey,
                @ViewBuilder icon: @escaping () -> Icon,
                badge: Text,
                disclosureIndicator: Bool = false) where Content == Text, Detail == AnyView {
        self.init(title,
                  icon: icon,
                  badge: badge,
                  detail: { ListCell.buildDetail(disclosureIndicator: disclosureIndicator) })
    }

    public init<Badge, Title>(_ title: Title,
                              @ViewBuilder icon: @escaping () -> Icon,
                              badge: Badge,
                              disclosureIndicator: Bool = false) where Title: StringProtocol, Badge: StringProtocol, Content == Text, Detail == AnyView {
        self.init(title,
                  icon: icon,
                  badge: Text(badge),
                  disclosureIndicator: disclosureIndicator)
    }

    public init(_ title: LocalizedStringKey,
                @ViewBuilder icon: @escaping () -> Icon,
                badge: LocalizedStringKey,
                disclosureIndicator: Bool = false) where Content == Text, Detail == AnyView {
        self.init(title,
                  icon: icon,
                  badge: Text(badge),
                  disclosureIndicator: disclosureIndicator)
    }

    public init<Title>(_ title: Title,
                       @ViewBuilder icon: @escaping () -> Icon,
                       badge: Int,
                       disclosureIndicator: Bool = false) where Title: StringProtocol, Content == Text, Detail == AnyView {
        self.init(title,
                  icon: icon,
                  badge: Text(badge.description),
                  disclosureIndicator: disclosureIndicator)
    }

    public init(_ title: LocalizedStringKey,
                @ViewBuilder icon: @escaping () -> Icon,
                badge: Int,
                disclosureIndicator: Bool = false) where Content == Text, Detail == AnyView {
        self.init(title,
                  icon: icon,
                  badge: Text(badge.description),
                  disclosureIndicator: disclosureIndicator)
    }

    public init(@ViewBuilder content: @escaping () -> Content,
                systemImage name: String,
                badge: Text,
                disclosureIndicator: Bool = false) where Icon == Image, Detail == AnyView {
        self.init(content: content,
                  systemImage: name,
                  badge: badge,
                  detail: { ListCell.buildDetail(disclosureIndicator: disclosureIndicator) })
    }

    public init<Badge>(@ViewBuilder content: @escaping () -> Content,
                       systemImage name: String,
                       badge: Badge,
                       disclosureIndicator: Bool = false) where Badge: StringProtocol, Icon == Image, Detail == AnyView {
        self.init(content: content,
                  systemImage: name,
                  badge: Text(badge),
                  disclosureIndicator: disclosureIndicator)
    }

    public init(@ViewBuilder content: @escaping () -> Content,
                systemImage name: String,
                badge: LocalizedStringKey,
                disclosureIndicator: Bool = false) where Icon == Image, Detail == AnyView {
        self.init(content: content,
                  systemImage: name,
                  badge: Text(badge),
                  disclosureIndicator: disclosureIndicator)
    }

    public init(@ViewBuilder content: @escaping () -> Content,
                systemImage name: String,
                badge: Int,
                disclosureIndicator: Bool = false) where Icon == Image, Detail == AnyView {
        self.init(content: content,
                  systemImage: name,
                  badge: Text(badge.description),
                  disclosureIndicator: disclosureIndicator)
    }

    public init<Title>(_ title: Title,
                       systemImage name: String,
                       badge: Text,
                       disclosureIndicator: Bool = false) where Title: StringProtocol, Content == Text, Icon == Image, Detail == AnyView {
        self.init(title,
                  systemImage: name,
                  badge: badge,
                  detail: { ListCell.buildDetail(disclosureIndicator: disclosureIndicator) })
    }

    public init(_ title: LocalizedStringKey,
                systemImage name: String,
                badge: Text,
                disclosureIndicator: Bool = false) where Content == Text, Icon == Image, Detail == AnyView {
        self.init(title,
                  systemImage: name,
                  badge: badge,
                  detail: { ListCell.buildDetail(disclosureIndicator: disclosureIndicator) })
    }

    public init<Badge, Title>(_ title: Title,
                              systemImage name: String,
                              badge: Badge,
                              disclosureIndicator: Bool = false) where Title: StringProtocol, Badge: StringProtocol, Content == Text, Icon == Image, Detail == AnyView {
        self.init(title,
                  systemImage: name,
                  badge: Text(badge),
                  disclosureIndicator: disclosureIndicator)
    }

    public init(_ title: LocalizedStringKey,
                systemImage name: String,
                badge: LocalizedStringKey,
                disclosureIndicator: Bool = false) where Content == Text, Icon == Image, Detail == AnyView {
        self.init(title,
                  systemImage: name,
                  badge: Text(badge),
                  disclosureIndicator: disclosureIndicator)
    }

    public init<Title>(_ title: Title,
                       systemImage name: String,
                       badge: Int,
                       disclosureIndicator: Bool = false) where Title: StringProtocol, Content == Text, Icon == Image, Detail == AnyView {
        self.init(title,
                  systemImage: name,
                  badge: Text(badge.description),
                  disclosureIndicator: disclosureIndicator)
    }

    public init(_ title: LocalizedStringKey,
                systemImage name: String,
                badge: Int,
                disclosureIndicator: Bool = false) where Content == Text, Icon == Image, Detail == AnyView {
        self.init(title,
                  systemImage: name,
                  badge: Text(badge.description),
                  disclosureIndicator: disclosureIndicator)
    }

    public init(@ViewBuilder content: @escaping () -> Content,
                badge: Text,
                @ViewBuilder detail: @escaping () -> Detail) where Icon == EmptyView {
        self.init(content: content,
                  icon: { EmptyView() },
                  badge: badge,
                  detail: detail)
    }

    public init<Badge>(@ViewBuilder content: @escaping () -> Content,
                       badge: Badge,
                       @ViewBuilder detail: @escaping () -> Detail) where Badge: StringProtocol, Icon == EmptyView {
        self.init(content: content,
                  badge: Text(badge),
                  detail: detail)
    }

    public init(@ViewBuilder content: @escaping () -> Content,
                badge: LocalizedStringKey,
                @ViewBuilder detail: @escaping () -> Detail) where Icon == EmptyView {
        self.init(content: content,
                  badge: Text(badge),
                  detail: detail)
    }

    public init(@ViewBuilder content: @escaping () -> Content,
                badge: Int,
                @ViewBuilder detail: @escaping () -> Detail) where Icon == EmptyView {
        self.init(content: content,
                  badge: Text(badge.description),
                  detail: detail)
    }

    public init<Title>(_ title: Title,
                       badge: Text,
                       @ViewBuilder detail: @escaping () -> Detail) where Title: StringProtocol, Content == Text, Icon == EmptyView {
        self.init(title,
                  icon: { EmptyView() },
                  badge: badge,
                  detail: detail)
    }

    public init(_ title: LocalizedStringKey,
                badge: Text,
                @ViewBuilder detail: @escaping () -> Detail) where Content == Text, Icon == EmptyView {
        self.init(title,
                  icon: { EmptyView() },
                  badge: badge,
                  detail: detail)
    }

    public init<Badge, Title>(_ title: Title,
                              badge: Badge,
                              @ViewBuilder detail: @escaping () -> Detail) where Title: StringProtocol, Badge: StringProtocol, Content == Text, Icon == EmptyView {
        self.init(title,
                  badge: Text(badge),
                  detail: detail)
    }

    public init(_ title: LocalizedStringKey,
                badge: LocalizedStringKey,
                @ViewBuilder detail: @escaping () -> Detail) where Content == Text, Icon == EmptyView {
        self.init(title,
                  badge: Text(badge),
                  detail: detail)
    }

    public init<Title>(_ title: Title,
                       badge: Int,
                       @ViewBuilder detail: @escaping () -> Detail) where Title: StringProtocol, Content == Text, Icon == EmptyView {
        self.init(title,
                  badge: Text(badge.description),
                  detail: detail)
    }

    public init(_ title: LocalizedStringKey,
                badge: Int,
                @ViewBuilder detail: @escaping () -> Detail) where Content == Text, Icon == EmptyView {
        self.init(title,
                  badge: Text(badge.description),
                  detail: detail)
    }

    public init(@ViewBuilder content: @escaping () -> Content,
                badge: Text,
                disclosureIndicator: Bool = false) where Detail == AnyView, Icon == EmptyView {
        self.init(content: content,
                  icon: { EmptyView() },
                  badge: badge,
                  disclosureIndicator: disclosureIndicator)
    }

    public init<Badge>(@ViewBuilder content: @escaping () -> Content,
                       badge: Badge,
                       disclosureIndicator: Bool = false) where Badge: StringProtocol, Detail == AnyView, Icon == EmptyView {
        self.init(content: content,
                  badge: Text(badge),
                  disclosureIndicator: disclosureIndicator)
    }

    public init(@ViewBuilder content: @escaping () -> Content,
                badge: LocalizedStringKey,
                disclosureIndicator: Bool = false) where Detail == AnyView, Icon == EmptyView {
        self.init(content: content,
                  badge: Text(badge),
                  disclosureIndicator: disclosureIndicator)
    }

    public init(@ViewBuilder content: @escaping () -> Content,
                badge: Int,
                disclosureIndicator: Bool = false) where Detail == AnyView, Icon == EmptyView {
        self.init(content: content,
                  badge: Text(badge.description),
                  disclosureIndicator: disclosureIndicator)
    }

    public init<Title>(_ title: Title,
                       badge: Text,
                       disclosureIndicator: Bool = false) where Title: StringProtocol, Content == Text, Detail == AnyView, Icon == EmptyView {
        self.init(title,
                  icon: { EmptyView() },
                  badge: badge,
                  disclosureIndicator: disclosureIndicator)
    }

    public init(_ title: LocalizedStringKey,
                badge: Text,
                disclosureIndicator: Bool = false) where Content == Text, Detail == AnyView, Icon == EmptyView {
        self.init(title,
                  icon: { EmptyView() },
                  badge: badge,
                  disclosureIndicator: disclosureIndicator)
    }

    public init<Badge, Title>(_ title: Title,
                              badge: Badge,
                              disclosureIndicator: Bool = false) where Title: StringProtocol, Badge: StringProtocol, Content == Text, Detail == AnyView, Icon == EmptyView {
        self.init(title,
                  badge: Text(badge),
                  disclosureIndicator: disclosureIndicator)
    }

    public init(_ title: LocalizedStringKey,
                badge: LocalizedStringKey,
                disclosureIndicator: Bool = false) where Content == Text, Detail == AnyView, Icon == EmptyView {
        self.init(title,
                  badge: Text(badge),
                  disclosureIndicator: disclosureIndicator)
    }

    public init(_ title: LocalizedStringKey,
                badge: Int,
                disclosureIndicator: Bool = false) where Content == Text, Detail == AnyView, Icon == EmptyView {
        self.init(title,
                  badge: Text(badge.description),
                  disclosureIndicator: disclosureIndicator)
    }

    public init(@ViewBuilder content: @escaping () -> Content,
                @ViewBuilder icon: @escaping () -> Icon,
                @ViewBuilder detail: @escaping () -> Detail) {
        self.init(content: content,
                  icon: icon,
                  detail: detail,
                  badgeText: nil)
    }

    public init<Title>(_ title: Title,
                       @ViewBuilder icon: @escaping () -> Icon,
                       @ViewBuilder detail: @escaping () -> Detail) where Title: StringProtocol, Content == Text {
        self.init(content: { Text(title) },
                  icon: icon,
                  detail: detail)
    }

    public init(_ title: LocalizedStringKey,
                @ViewBuilder icon: @escaping () -> Icon,
                @ViewBuilder detail: @escaping () -> Detail) where Content == Text {
        self.init(content: { Text(title) },
                  icon: icon,
                  detail: detail)
    }

    public init(@ViewBuilder content: @escaping () -> Content,
                systemImage name: String,
                @ViewBuilder detail: @escaping () -> Detail) where Icon == Image {
        self.init(content: content,
                  icon: { Image(systemName: name) },
                  detail: detail)
    }

    public init<Title>(_ title: Title,
                       systemImage name: String,
                       @ViewBuilder detail: @escaping () -> Detail) where Title: StringProtocol, Content == Text, Icon == Image {
        self.init(title,
                  icon: { Icon(systemName: name) },
                  detail: detail)
    }

    public init(_ title: LocalizedStringKey,
                systemImage name: String,
                @ViewBuilder detail: @escaping () -> Detail) where Content == Text, Icon == Image {
        self.init(title,
                  icon: { Icon(systemName: name) },
                  detail: detail)
    }

    public init(@ViewBuilder content: @escaping () -> Content,
                @ViewBuilder icon: @escaping () -> Icon,
                disclosureIndicator: Bool = false) where Detail == AnyView {
        self.init(content: content,
                  icon: icon,
                  detail: { ListCell.buildDetail(disclosureIndicator: disclosureIndicator) })
    }

    public init<Title>(_ title: Title,
                       @ViewBuilder icon: @escaping () -> Icon,
                       disclosureIndicator: Bool = false) where Title: StringProtocol, Content == Text, Detail == AnyView {
        self.init(title,
                  icon: icon,
                  detail: { ListCell.buildDetail(disclosureIndicator: disclosureIndicator) })
    }

    public init(_ title: LocalizedStringKey,
                @ViewBuilder icon: @escaping () -> Icon,
                disclosureIndicator: Bool = false) where Content == Text, Detail == AnyView {
        self.init(title,
                  icon: icon,
                  detail: { ListCell.buildDetail(disclosureIndicator: disclosureIndicator) })
    }

    public init(@ViewBuilder content: @escaping () -> Content,
                systemImage name: String,
                disclosureIndicator: Bool = false) where Icon == Image, Detail == AnyView {
        self.init(content: content,
                  systemImage: name,
                  detail: { ListCell.buildDetail(disclosureIndicator: disclosureIndicator) })
    }

    public init<Title>(_ title: Title,
                       systemImage name: String,
                       disclosureIndicator: Bool = false) where Title: StringProtocol, Content == Text, Icon == Image, Detail == AnyView {
        self.init(title,
                  systemImage: name,
                  detail: { ListCell.buildDetail(disclosureIndicator: disclosureIndicator) })
    }

    public init(@ViewBuilder content: @escaping () -> Content,
                @ViewBuilder detail: @escaping () -> Detail) where Icon == EmptyView {
        self.init(content: content,
                  icon: { EmptyView() },
                  detail: detail)
    }

    public init<Title>(_ title: Title,
                       @ViewBuilder detail: @escaping () -> Detail) where Title: StringProtocol, Content == Text, Icon == EmptyView {
        self.init(title,
                  icon: { EmptyView() },
                  detail: detail)
    }

    public init(_ title: LocalizedStringKey,
                @ViewBuilder detail: @escaping () -> Detail) where Content == Text, Icon == EmptyView {
        self.init(title,
                  icon: { EmptyView() },
                  detail: detail)
    }

    public init(@ViewBuilder content: @escaping () -> Content,
                disclosureIndicator: Bool = false) where Detail == AnyView, Icon == EmptyView {
        self.init(content: content,
                  icon: { EmptyView() },
                  disclosureIndicator: disclosureIndicator)
    }

    public init<Title>(_ title: Title,
                       disclosureIndicator: Bool = false) where Title: StringProtocol, Content == Text, Detail == AnyView, Icon == EmptyView {
        self.init(title,
                  icon: { EmptyView() },
                  disclosureIndicator: disclosureIndicator)
    }

    public init(_ title: LocalizedStringKey,
                disclosureIndicator: Bool = false) where Content == Text, Detail == AnyView, Icon == EmptyView {
        self.init(title,
                  icon: { EmptyView() },
                  disclosureIndicator: disclosureIndicator)
    }

    public init(@ViewBuilder content: @escaping () -> Content,
                @ViewBuilder icon: @escaping () -> Icon,
                toggle isOn: Binding<Bool>) where Detail == Toggle<EmptyView> {
        self.init(content: content,
                  icon: icon,
                  detail: { Toggle(isOn: isOn) },
                  badgeText: nil)
    }

    public init<Title>(_ title: Title,
                       @ViewBuilder icon: @escaping () -> Icon,
                       toggle isOn: Binding<Bool>) where Title: StringProtocol, Content == Text, Detail == Toggle<EmptyView> {
        self.init(content: { Text(title) },
                  icon: icon,
                  toggle: isOn)

    }

    public init(_ title: LocalizedStringKey,
                @ViewBuilder icon: @escaping () -> Icon,
                toggle isOn: Binding<Bool>) where Content == Text, Detail == Toggle<EmptyView> {
        self.init(content: { Text(title) },
                  icon: icon,
                  toggle: isOn)

    }

    public init(@ViewBuilder content: @escaping () -> Content,
                systemImage name: String,
                toggle isOn: Binding<Bool>) where Icon == Image, Detail == Toggle<EmptyView> {
        self.init(content: content,
                  icon: { Image(systemName: name) },
                  toggle: isOn)
    }

    public init(@ViewBuilder content: @escaping () -> Content,
                toggle isOn: Binding<Bool>) where Detail == Toggle<EmptyView>, Icon == EmptyView {
        self.init(content: content,
                  icon: { EmptyView() },
                  toggle: isOn)
    }

    public init<Title>(_ title: Title,
                       toggle isOn: Binding<Bool>) where Title: StringProtocol, Content == Text, Detail == Toggle<EmptyView>, Icon == EmptyView {
        self.init(title,
                  icon: { EmptyView() },
                  toggle: isOn)
    }

    public init(_ title: LocalizedStringKey,
                toggle isOn: Binding<Bool>) where Content == Text, Detail == Toggle<EmptyView>, Icon == EmptyView {
        self.init(title,
                  icon: { EmptyView() },
                  toggle: isOn)
    }

    public init<Placeholder>(placeholder: Placeholder,
                             input: Binding<String>) where Placeholder: StringProtocol, Content == TextField<Text>, Detail == EmptyView, Icon == EmptyView {
        self.init(content: { TextField(placeholder, text: input) },
                  icon: { EmptyView() },
                  detail: { EmptyView() },
                  badgeText: nil,
                  privateStyle: .init(TextFieldListCellStyle()))
    }

    public init(placeholder: LocalizedStringKey,
                input: Binding<String>) where Content == TextField<Text>, Detail == EmptyView, Icon == EmptyView {
        self.init(content: { TextField(placeholder, text: input) },
                  icon: { EmptyView() },
                  detail: { EmptyView() },
                  badgeText: nil,
                  privateStyle: .init(TextFieldListCellStyle()))
    }

    public init(configuration: ListCellStyleConfiguration) where Content == ListCellStyleConfiguration.Content, Detail == ListCellStyleConfiguration.Detail, Icon == ListCellStyleConfiguration.Icon {
        self.init(content: { configuration.content },
                  icon: { configuration.icon },
                  detail: { configuration.detail },
                  badgeText: configuration.badge,
                  privateStyle: AnyListCellStyle(AutomaticListCellStyle()),
                  privateConfiguration: configuration)
    }

    // MARK: - View

    public var body: some View {
        let config = privateConfiguration ?? buildConfiguration()
        if let privateStyle = privateStyle {
            privateStyle
                .makeBody(configuration: config)
        } else {
            listCellStyle
                .makeBody(configuration: config)
        }
    }

    // MARK: - Private

    private init(@ViewBuilder content: @escaping () -> Content,
                 @ViewBuilder icon: @escaping () -> Icon,
                 @ViewBuilder detail: @escaping () -> Detail,
                 badgeText: Text? = nil,
                 privateStyle: AnyListCellStyle? = nil,
                 privateConfiguration: ListCellStyleConfiguration? = nil) {
        self.content = content
        self.icon = icon
        self.detail = detail
        self.badgeText = badgeText
        self.privateStyle = privateStyle
        self.privateConfiguration = privateConfiguration
    }

    private let privateConfiguration: ListCellStyleConfiguration?
    private let privateStyle: AnyListCellStyle?
    private let icon: () -> Icon
    private let content: () -> Content
    private let detail: () -> Detail
    private let badgeText: Text?

    @Environment(\.listCellStyle)
    private var listCellStyle: AnyListCellStyle

    private func buildConfiguration() -> ListCellStyle.Configuration {
        ListCellStyle.Configuration(icon: .init(icon()),
                                    content: .init(content()),
                                    detail: .init(detail()),
                                    badge: badgeText)
    }

    private static func buildDetail(disclosureIndicator: Bool) -> AnyView {
        disclosureIndicator ? AnyView(Chevron()) : AnyView(EmptyView())
    }

    private struct Chevron: View {

        var body: some View {
            Image(systemName: "chevron.forward")
                .font(Font.system(.caption).weight(.bold))
                .foregroundColor(.init(.tertiaryLabel))
        }

    }

    private struct TextFieldListCellStyle: ListCellStyle {

        func makeBody(configuration: Configuration) -> some View {
            configuration.content
                .frame(maxWidth: .infinity)
        }

    }

}

public extension View {

    /// Sets the style for list cellswithin this view.
    ///
    /// Use this modifier to set a specific style for all list cells within a view:
    ///
    ///     List {
    ///         ListCell("Fire", systemImage: "flame.fill")
    ///         ListCell("Lightning", systemImage: "bolt.fill")
    ///     }
    ///     .listCellStyle(MyCustomListCellStyle())
    ///
    func listCellStyle<T>(_ style: T) -> some View where T: ListCellStyle {
        environment(\.listCellStyle, .init(style))
    }

}

public protocol ListCellStyle {

    associatedtype Body: View

    typealias Configuration = ListCellStyleConfiguration

    @ViewBuilder
    func makeBody(configuration: Configuration) -> Body

}

public struct ListCellStyleConfiguration {

    // MARK: - API

    public struct Icon: View {

        fileprivate init<T>(_ content: T) where T: View {
            body = .init(content)
        }

        public let body: AnyView
    }

    public struct Content: View {

        fileprivate init<T>(_ content: T) where T: View {
            body = .init(content)
        }

        public let body: AnyView
    }

    public struct Detail: View {

        fileprivate init<T>(_ content: T) where T: View {
            body = .init(content)
        }

        public let body: AnyView
    }

    public typealias Badge = Text

    public let icon: Icon
    public let content: Content
    public let detail: Detail
    public let badge: Badge?

    // MARK: - Private

    fileprivate init(icon: Icon,
                     content: Content,
                     detail: Detail,
                     badge: Badge?) {
        self.icon = icon
        self.content = content
        self.detail = detail
        self.badge = badge
    }
}

public struct TitleAndIconListCellStyle: ListCellStyle {

    // MARK: - ListCellStyle

    public func makeBody(configuration: Configuration) -> some View {
        HStack {
            Label(title: { configuration.content.foregroundColor(.init(.label)) },
                  icon: { configuration.icon.foregroundColor(.accentColor) })
                .badge(configuration.badge)
            Spacer()
            configuration.detail
        }
    }

}

public extension ListCellStyle where Self == TitleAndIconListCellStyle {

    static var titleAndIconStyle: TitleAndIconListCellStyle { .init() }

}

public struct TitleOnlyListCellStyle: ListCellStyle {

    // MARK: - ListCellStyle

    public func makeBody(configuration: Configuration) -> some View {
        HStack {
            configuration.content
                .foregroundColor(.init(.label))
                .badge(configuration.badge)
            Spacer()
            configuration.detail
        }
    }

}

public extension ListCellStyle where Self == TitleOnlyListCellStyle {

    static var titleOnlyStyle: TitleOnlyListCellStyle { .init() }

}

public struct ButtonListCellStyle: ListCellStyle {

    // MARK: - Initializers

    public init(accentColor: Color? = nil) {
        self.accentColor = accentColor
    }

    // MARK: - ListCellStyle

    public func makeBody(configuration: Configuration) -> some View {
        configuration.content
            .multilineTextAlignment(.center)
            .foregroundColor(accentColor)
            .frame(maxWidth: .infinity)
    }

    // MARK: - Private

    private let accentColor: Color?

}

public extension ListCellStyle where Self == ButtonListCellStyle {

    static var defaultButtonStyle: ButtonListCellStyle { .init(accentColor: .accentColor) }

    static var destructiveButtonStyle: ButtonListCellStyle { .init(accentColor: .red) }

    static func buttonListCellStyle(accentColor: Color?) -> ButtonListCellStyle {
        .init(accentColor: accentColor)
    }

}

public struct AutomaticListCellStyle: ListCellStyle {

    // MARK: - ListCellStyle

    public func makeBody(configuration: Configuration) -> some View {
        if horizontalSizeClass == .compact {
            TitleOnlyListCellStyle().makeBody(configuration: configuration)
        } else {
            TitleAndIconListCellStyle().makeBody(configuration: configuration)
        }
    }

    // MARK: - Private

    @Environment(\.horizontalSizeClass)
    private var horizontalSizeClass
}

public extension ListCellStyle where Self == AutomaticListCellStyle {

    static var automatic: AutomaticListCellStyle { .init() }

}

private struct AnyListCellStyle: ListCellStyle {

    init<T>(_ style: T) where T: ListCellStyle {
        makeBodyClosure = { configuration in
            AnyView(style.makeBody(configuration: configuration))
        }
    }

    func makeBody(configuration: Configuration) -> some View {
        makeBodyClosure(configuration)
    }

    private let makeBodyClosure: (Configuration) -> AnyView
}

private struct ListCellStyleKey: EnvironmentKey {
    typealias Value = AnyListCellStyle
    static var defaultValue: AnyListCellStyle { .init(AutomaticListCellStyle()) }
}

private extension EnvironmentValues {
    var listCellStyle: AnyListCellStyle {
        get {
            self[ListCellStyleKey.self]
        }
        set {
            self[ListCellStyleKey.self] = newValue
        }
    }
}

private extension Toggle {
    init(isOn: Binding<Bool>) where Label == EmptyView {
        self.init(isOn: isOn, label: { EmptyView() })
    }
}

struct BorderedStyle: ListCellStyle {

    func makeBody(configuration: Configuration) -> some View {
        ListCell(configuration: configuration)
            .background(Color.red)
    }

}

struct ListCell_Previews: PreviewProvider {
    static var previews: some View {
        ForEach(ColorScheme.allCases, id: \.self) { scheme in
            List {
                Section {
                    ListCell("Test")
                    ListCell("Test")
                }
                Section {
                    ListCell("Hello")
                    Button(action: { print("X") }) {
                        ListCell("Good Bye", disclosureIndicator: true)
                    }
                    ListCell("Toggle", toggle: .constant(false))
                    ListCell(placeholder: "Placeholder", input: .constant(""))
                    ListCell("Content", systemImage: "envelope", disclosureIndicator: true)
                }
                .listCellStyle(.automatic)
                Section {
                    ListCell("Continue")
                        .listCellStyle(.destructiveButtonStyle)
                }

                Section {
                    ListCell("Cancel")
                        .listCellStyle(.defaultButtonStyle)
                }
            }
            .colorScheme(scheme)
        }
    }
}
