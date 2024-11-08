//
//  EnumViewState.swift
//  BucketList
//
//  Created by mac on 08/11/2024.
//

import SwiftUI

struct LoadingView: View {
    var body: some View {
        Text("Loading...")
    }
}

struct SuccessView: View {
    var body: some View {
        Text("Success!")
    }
}

struct FailedView: View {
    var body: some View {
        Text("Failed.")
    }
}

struct EnumViewState: View {
    @State private var loadingState = LoadingState.success
    
    enum LoadingState {
        case loading, success, failed
    }

    var body: some View {
        if loadingState == .loading {
            LoadingView()
        } else if loadingState == .success {
            SuccessView()
        } else if loadingState == .failed {
            FailedView()
        }
   }
}

#Preview {
    EnumViewState()
}
