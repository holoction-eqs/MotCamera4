.class public Lcom/motorola/camera/ui/controls_2020/settings/preferences/generic/DisableAppearanceListPreference;
.super Landroidx/preference/ListPreference;
.source "SourceFile"

# interfaces
.implements Lcom/motorola/camera/ui/controls_2020/settings/preferences/generic/RoundedPreferenceDelegate;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\u0008\u0016\u0018\u00002\u00020\u00012\u00020\u0002\u00a8\u0006\u0003"
    }
    d2 = {
        "Lcom/motorola/camera/ui/controls_2020/settings/preferences/generic/DisableAppearanceListPreference;",
        "Landroidx/preference/ListPreference;",
        "Lcom/motorola/camera/ui/controls_2020/settings/preferences/generic/RoundedPreferenceDelegate;",
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
.field public final synthetic $$delegate_0:Lcom/motorola/camera/ui/controls_2020/settings/preferences/generic/RoundedPreferenceImpl;

.field public enableAppearance:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 7

    .line 1
    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/ExceptionsKt;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/16 v6, 0x1c

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    invoke-direct/range {v1 .. v6}, Lcom/motorola/camera/ui/controls_2020/settings/preferences/generic/DisableAppearanceListPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;III)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;III)V
    .locals 1

    and-int/lit8 v0, p5, 0x2

    if-eqz v0, :cond_0

    const/4 p2, 0x0

    :cond_0
    and-int/lit8 v0, p5, 0x4

    if-eqz v0, :cond_1

    const p3, 0x7f040190

    :cond_1
    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_2

    const/4 p4, 0x0

    :cond_2
    const-string p5, "context"

    .line 2
    invoke-static {p1, p5}, Lkotlin/ExceptionsKt;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1, p2, p3, p4}, Landroidx/preference/ListPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    new-instance p1, Lcom/motorola/camera/ui/controls_2020/settings/preferences/generic/RoundedPreferenceImpl;

    invoke-direct {p1}, Lcom/motorola/camera/ui/controls_2020/settings/preferences/generic/RoundedPreferenceImpl;-><init>()V

    iput-object p1, p0, Lcom/motorola/camera/ui/controls_2020/settings/preferences/generic/DisableAppearanceListPreference;->$$delegate_0:Lcom/motorola/camera/ui/controls_2020/settings/preferences/generic/RoundedPreferenceImpl;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/motorola/camera/ui/controls_2020/settings/preferences/generic/DisableAppearanceListPreference;->enableAppearance:Z

    return-void
.end method


# virtual methods
.method public final onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V
    .locals 3

    invoke-super {p0, p1}, Landroidx/preference/Preference;->onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V

    const v0, 0x1020016

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const-string v1, "null cannot be cast to non-null type android.widget.TextView"

    invoke-static {v0, v1}, Lkotlin/ExceptionsKt;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/widget/TextView;

    iget-boolean v2, p0, Lcom/motorola/camera/ui/controls_2020/settings/preferences/generic/DisableAppearanceListPreference;->enableAppearance:Z

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setEnabled(Z)V

    const v0, 0x1020010

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-static {v0, v1}, Lkotlin/ExceptionsKt;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/widget/TextView;

    iget-boolean v1, p0, Lcom/motorola/camera/ui/controls_2020/settings/preferences/generic/DisableAppearanceListPreference;->enableAppearance:Z

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEnabled(Z)V

    iget-object v0, p0, Landroidx/preference/Preference;->mContext:Landroid/content/Context;

    const-string v1, "context"

    invoke-static {v0, v1}, Lkotlin/ExceptionsKt;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    const-string v1, "this.itemView"

    invoke-static {p1, v1}, Lkotlin/ExceptionsKt;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/motorola/camera/ui/controls_2020/settings/preferences/generic/DisableAppearanceListPreference;->$$delegate_0:Lcom/motorola/camera/ui/controls_2020/settings/preferences/generic/RoundedPreferenceImpl;

    invoke-virtual {p0, v0, p1}, Lcom/motorola/camera/ui/controls_2020/settings/preferences/generic/RoundedPreferenceImpl;->setRoundedPreferenceStyle(Landroid/content/Context;Landroid/view/View;)V

    return-void
.end method

.method public final onClick()V
    .locals 1

    iget-boolean v0, p0, Lcom/motorola/camera/ui/controls_2020/settings/preferences/generic/DisableAppearanceListPreference;->enableAppearance:Z

    if-eqz v0, :cond_0

    invoke-super {p0}, Landroidx/preference/DialogPreference;->onClick()V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/motorola/camera/ui/controls_2020/settings/preferences/generic/DisableAppearanceListPreference;->onClickWhenDisabled()V

    :goto_0
    return-void
.end method

.method public onClickWhenDisabled()V
    .locals 0

    return-void
.end method

.method public final setBackgroundDrawable(I)V
    .locals 0

    iget-object p0, p0, Lcom/motorola/camera/ui/controls_2020/settings/preferences/generic/DisableAppearanceListPreference;->$$delegate_0:Lcom/motorola/camera/ui/controls_2020/settings/preferences/generic/RoundedPreferenceImpl;

    invoke-virtual {p0, p1}, Lcom/motorola/camera/ui/controls_2020/settings/preferences/generic/RoundedPreferenceImpl;->setBackgroundDrawable(I)V

    return-void
.end method
