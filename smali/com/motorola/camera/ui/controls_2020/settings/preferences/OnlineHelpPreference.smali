.class public final Lcom/motorola/camera/ui/controls_2020/settings/preferences/OnlineHelpPreference;
.super Landroidx/preference/Preference;
.source "SourceFile"

# interfaces
.implements Lcom/motorola/camera/ui/widgets/OnlineHelpWebView$OnTouchCallback;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000 \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0006\u0018\u00002\u00020\u00012\u00020\u0002:\u0001\u000cB1\u0008\u0007\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\n\u0008\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u0005\u0012\u0008\u0008\u0002\u0010\u0008\u001a\u00020\u0007\u0012\u0008\u0008\u0002\u0010\t\u001a\u00020\u0007\u00a2\u0006\u0004\u0008\n\u0010\u000b\u00a8\u0006\r"
    }
    d2 = {
        "Lcom/motorola/camera/ui/controls_2020/settings/preferences/OnlineHelpPreference;",
        "Landroidx/preference/Preference;",
        "Lcom/motorola/camera/ui/widgets/OnlineHelpWebView$OnTouchCallback;",
        "Landroid/content/Context;",
        "context",
        "Landroid/util/AttributeSet;",
        "attrs",
        "",
        "defStyleAttr",
        "defStyleRes",
        "<init>",
        "(Landroid/content/Context;Landroid/util/AttributeSet;II)V",
        "Companion",
        "MotCamera4-v9.1.0.91_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x8,
        0x0
    }
.end annotation


# instance fields
.field public errorImg:Landroid/widget/ImageButton;

.field public errorLayout:Landroid/widget/LinearLayout;

.field public errorTips:Landroid/widget/TextView;

.field public errorTitle:Landroid/widget/TextView;

.field public final handler:Landroid/os/Handler;

.field public itemView:Landroid/view/View;

.field public loadingLayout:Landroid/widget/LinearLayout;

.field public touchCount:I

.field public webView:Lcom/motorola/camera/ui/widgets/OnlineHelpWebView;

.field public webViewLayout:Landroid/widget/RelativeLayout;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 8

    .line 1
    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/ExceptionsKt;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/16 v6, 0xe

    const/4 v7, 0x0

    move-object v1, p0

    move-object v2, p1

    invoke-direct/range {v1 .. v7}, Lcom/motorola/camera/ui/controls_2020/settings/preferences/OnlineHelpPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IIILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 8

    .line 2
    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/ExceptionsKt;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/16 v6, 0xc

    const/4 v7, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    invoke-direct/range {v1 .. v7}, Lcom/motorola/camera/ui/controls_2020/settings/preferences/OnlineHelpPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IIILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 8

    .line 3
    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/ExceptionsKt;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v5, 0x0

    const/16 v6, 0x8

    const/4 v7, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    invoke-direct/range {v1 .. v7}, Lcom/motorola/camera/ui/controls_2020/settings/preferences/OnlineHelpPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IIILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 1

    .line 4
    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/ExceptionsKt;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1, p2, p3, p4}, Landroidx/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    new-instance p2, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p3

    new-instance p4, Lcom/motorola/camera/ui/controls_2020/settings/preferences/OnlineHelpPreference$$ExternalSyntheticLambda0;

    const/4 v0, 0x0

    invoke-direct {p4, p0, p1, v0}, Lcom/motorola/camera/ui/controls_2020/settings/preferences/OnlineHelpPreference$$ExternalSyntheticLambda0;-><init>(Landroidx/preference/Preference;Landroid/content/Context;I)V

    invoke-direct {p2, p3, p4}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    iput-object p2, p0, Lcom/motorola/camera/ui/controls_2020/settings/preferences/OnlineHelpPreference;->handler:Landroid/os/Handler;

    return-void
.end method

.method public synthetic constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;IIILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 5
    and-int/lit8 p6, p5, 0x2

    if-eqz p6, :cond_0

    const/4 p2, 0x0

    :cond_0
    and-int/lit8 p6, p5, 0x4

    if-eqz p6, :cond_1

    const p3, 0x7f04040a

    :cond_1
    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_2

    const/4 p4, 0x0

    :cond_2
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/motorola/camera/ui/controls_2020/settings/preferences/OnlineHelpPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method


# virtual methods
.method public final onAttached()V
    .locals 0

    invoke-super {p0}, Landroidx/preference/Preference;->onAttached()V

    sget-object p0, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    invoke-virtual {p0}, Lcom/motorola/camera/CameraApp;->getAnalytics()Lcom/motorola/camera/analytics/AnalyticsHelper;

    move-result-object p0

    invoke-virtual {p0}, Lcom/motorola/camera/analytics/AnalyticsHelper;->handleOnlineHelpOpened()V

    return-void
.end method

.method public final onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V
    .locals 2

    invoke-super {p0, p1}, Landroidx/preference/Preference;->onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V

    iget-object v0, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    iput-object v0, p0, Lcom/motorola/camera/ui/controls_2020/settings/preferences/OnlineHelpPreference;->itemView:Landroid/view/View;

    const v0, 0x7f0a02e8

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const-string v1, "null cannot be cast to non-null type android.widget.RelativeLayout"

    invoke-static {v0, v1}, Lkotlin/ExceptionsKt;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/motorola/camera/ui/controls_2020/settings/preferences/OnlineHelpPreference;->webViewLayout:Landroid/widget/RelativeLayout;

    const v0, 0x7f0a02eb

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/motorola/camera/ui/widgets/OnlineHelpWebView;

    iput-object v0, p0, Lcom/motorola/camera/ui/controls_2020/settings/preferences/OnlineHelpPreference;->webView:Lcom/motorola/camera/ui/widgets/OnlineHelpWebView;

    const v0, 0x7f0a02e7

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/motorola/camera/ui/controls_2020/settings/preferences/OnlineHelpPreference;->loadingLayout:Landroid/widget/LinearLayout;

    const v0, 0x7f0a02e1

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const-string v1, "null cannot be cast to non-null type android.widget.LinearLayout"

    invoke-static {v0, v1}, Lkotlin/ExceptionsKt;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/motorola/camera/ui/controls_2020/settings/preferences/OnlineHelpPreference;->errorLayout:Landroid/widget/LinearLayout;

    const v0, 0x7f0a02e3

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/motorola/camera/ui/controls_2020/settings/preferences/OnlineHelpPreference;->errorImg:Landroid/widget/ImageButton;

    const v0, 0x7f0a02e5

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/motorola/camera/ui/controls_2020/settings/preferences/OnlineHelpPreference;->errorTitle:Landroid/widget/TextView;

    const v0, 0x7f0a02e4

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const-string v1, "null cannot be cast to non-null type android.widget.TextView"

    invoke-static {v0, v1}, Lkotlin/ExceptionsKt;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/motorola/camera/ui/controls_2020/settings/preferences/OnlineHelpPreference;->errorTips:Landroid/widget/TextView;

    const v0, 0x7f0a02e9

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    if-eqz p1, :cond_0

    new-instance v0, Lcom/motorola/camera/CtaPrivacyActivity$$ExternalSyntheticLambda0;

    const/16 v1, 0x18

    invoke-direct {v0, p0, v1}, Lcom/motorola/camera/CtaPrivacyActivity$$ExternalSyntheticLambda0;-><init>(Ljava/lang/Object;I)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_0
    return-void
.end method

.method public final onDetached()V
    .locals 1

    invoke-virtual {p0}, Landroidx/preference/Preference;->unregisterDependency()V

    iget-object v0, p0, Lcom/motorola/camera/ui/controls_2020/settings/preferences/OnlineHelpPreference;->itemView:Landroid/view/View;

    if-eqz v0, :cond_0

    invoke-static {v0}, Lcom/motorola/camera/Util;->dismissKeyboard(Landroid/view/View;)Z

    :cond_0
    iget-object v0, p0, Lcom/motorola/camera/ui/controls_2020/settings/preferences/OnlineHelpPreference;->webView:Lcom/motorola/camera/ui/widgets/OnlineHelpWebView;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    :cond_1
    iget-object p0, p0, Lcom/motorola/camera/ui/controls_2020/settings/preferences/OnlineHelpPreference;->handler:Landroid/os/Handler;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    return-void
.end method

.method public final onTouchEvent()V
    .locals 2

    iget v0, p0, Lcom/motorola/camera/ui/controls_2020/settings/preferences/OnlineHelpPreference;->touchCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/motorola/camera/ui/controls_2020/settings/preferences/OnlineHelpPreference;->touchCount:I

    const/16 v1, 0xa

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    iput v0, p0, Lcom/motorola/camera/ui/controls_2020/settings/preferences/OnlineHelpPreference;->touchCount:I

    :cond_0
    return-void
.end method

.method public final updateState(Lcom/motorola/camera/ui/controls_2020/OnlineHelpWebViewClient$States;)V
    .locals 3

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    const/4 v0, 0x0

    const/16 v1, 0x8

    if-eqz p1, :cond_f

    const/4 v2, 0x1

    if-eq p1, v2, :cond_c

    const/4 v2, 0x2

    if-eq p1, v2, :cond_6

    const/4 v2, 0x3

    if-eq p1, v2, :cond_0

    goto/16 :goto_b

    :cond_0
    iget-object p1, p0, Lcom/motorola/camera/ui/controls_2020/settings/preferences/OnlineHelpPreference;->loadingLayout:Landroid/widget/LinearLayout;

    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    :goto_0
    iget-object p1, p0, Lcom/motorola/camera/ui/controls_2020/settings/preferences/OnlineHelpPreference;->webViewLayout:Landroid/widget/RelativeLayout;

    if-nez p1, :cond_2

    goto :goto_1

    :cond_2
    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    :goto_1
    iget-object p1, p0, Lcom/motorola/camera/ui/controls_2020/settings/preferences/OnlineHelpPreference;->errorLayout:Landroid/widget/LinearLayout;

    if-nez p1, :cond_3

    goto :goto_2

    :cond_3
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    :goto_2
    iget-object p1, p0, Lcom/motorola/camera/ui/controls_2020/settings/preferences/OnlineHelpPreference;->errorImg:Landroid/widget/ImageButton;

    if-eqz p1, :cond_4

    const v0, 0x7f080232

    invoke-virtual {p1, v0}, Landroid/view/View;->setBackgroundResource(I)V

    :cond_4
    iget-object p1, p0, Lcom/motorola/camera/ui/controls_2020/settings/preferences/OnlineHelpPreference;->errorTitle:Landroid/widget/TextView;

    if-eqz p1, :cond_5

    const v0, 0x7f12031a

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(I)V

    :cond_5
    iget-object p0, p0, Lcom/motorola/camera/ui/controls_2020/settings/preferences/OnlineHelpPreference;->errorTips:Landroid/widget/TextView;

    if-eqz p0, :cond_13

    const p1, 0x7f12031b

    goto :goto_6

    :cond_6
    iget-object p1, p0, Lcom/motorola/camera/ui/controls_2020/settings/preferences/OnlineHelpPreference;->loadingLayout:Landroid/widget/LinearLayout;

    if-nez p1, :cond_7

    goto :goto_3

    :cond_7
    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    :goto_3
    iget-object p1, p0, Lcom/motorola/camera/ui/controls_2020/settings/preferences/OnlineHelpPreference;->webViewLayout:Landroid/widget/RelativeLayout;

    if-nez p1, :cond_8

    goto :goto_4

    :cond_8
    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    :goto_4
    iget-object p1, p0, Lcom/motorola/camera/ui/controls_2020/settings/preferences/OnlineHelpPreference;->errorLayout:Landroid/widget/LinearLayout;

    if-nez p1, :cond_9

    goto :goto_5

    :cond_9
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    :goto_5
    iget-object p1, p0, Lcom/motorola/camera/ui/controls_2020/settings/preferences/OnlineHelpPreference;->errorImg:Landroid/widget/ImageButton;

    if-eqz p1, :cond_a

    const v0, 0x7f080231

    invoke-virtual {p1, v0}, Landroid/view/View;->setBackgroundResource(I)V

    :cond_a
    iget-object p1, p0, Lcom/motorola/camera/ui/controls_2020/settings/preferences/OnlineHelpPreference;->errorTitle:Landroid/widget/TextView;

    if-eqz p1, :cond_b

    const v0, 0x7f120317

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(I)V

    :cond_b
    iget-object p0, p0, Lcom/motorola/camera/ui/controls_2020/settings/preferences/OnlineHelpPreference;->errorTips:Landroid/widget/TextView;

    if-eqz p0, :cond_13

    const p1, 0x7f120318

    :goto_6
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_b

    :cond_c
    iget-object p1, p0, Lcom/motorola/camera/ui/controls_2020/settings/preferences/OnlineHelpPreference;->loadingLayout:Landroid/widget/LinearLayout;

    if-nez p1, :cond_d

    goto :goto_7

    :cond_d
    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    :goto_7
    iget-object p1, p0, Lcom/motorola/camera/ui/controls_2020/settings/preferences/OnlineHelpPreference;->errorLayout:Landroid/widget/LinearLayout;

    if-nez p1, :cond_e

    goto :goto_8

    :cond_e
    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    :goto_8
    iget-object p0, p0, Lcom/motorola/camera/ui/controls_2020/settings/preferences/OnlineHelpPreference;->webViewLayout:Landroid/widget/RelativeLayout;

    if-nez p0, :cond_12

    goto :goto_b

    :cond_f
    iget-object p1, p0, Lcom/motorola/camera/ui/controls_2020/settings/preferences/OnlineHelpPreference;->webViewLayout:Landroid/widget/RelativeLayout;

    if-nez p1, :cond_10

    goto :goto_9

    :cond_10
    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    :goto_9
    iget-object p1, p0, Lcom/motorola/camera/ui/controls_2020/settings/preferences/OnlineHelpPreference;->errorLayout:Landroid/widget/LinearLayout;

    if-nez p1, :cond_11

    goto :goto_a

    :cond_11
    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    :goto_a
    iget-object p0, p0, Lcom/motorola/camera/ui/controls_2020/settings/preferences/OnlineHelpPreference;->loadingLayout:Landroid/widget/LinearLayout;

    if-nez p0, :cond_12

    goto :goto_b

    :cond_12
    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_13
    :goto_b
    return-void
.end method
