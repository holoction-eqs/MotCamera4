.class public Lcom/motorola/camera/ui/controls_2020/settings/preferences/generic/SummaryPreference;
.super Landroidx/preference/Preference;
.source "SourceFile"

# interfaces
.implements Lcom/motorola/camera/ui/controls_2020/settings/preferences/generic/RoundedPreferenceDelegate;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000 \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0006\u0008\u0016\u0018\u00002\u00020\u00012\u00020\u0002B=\u0008\u0007\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\n\u0008\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u0005\u0012\u0008\u0008\u0002\u0010\u0008\u001a\u00020\u0007\u0012\u0008\u0008\u0002\u0010\t\u001a\u00020\u0007\u0012\n\u0008\u0002\u0010\n\u001a\u0004\u0018\u00010\u0007\u00a2\u0006\u0004\u0008\u000b\u0010\u000c\u00a8\u0006\r"
    }
    d2 = {
        "Lcom/motorola/camera/ui/controls_2020/settings/preferences/generic/SummaryPreference;",
        "Landroidx/preference/Preference;",
        "Lcom/motorola/camera/ui/controls_2020/settings/preferences/generic/RoundedPreferenceDelegate;",
        "Landroid/content/Context;",
        "context",
        "Landroid/util/AttributeSet;",
        "attrs",
        "",
        "defStyleAttr",
        "defStyleRes",
        "backgroundDrawable",
        "<init>",
        "(Landroid/content/Context;Landroid/util/AttributeSet;IILjava/lang/Integer;)V",
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


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 9

    .line 1
    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/ExceptionsKt;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/16 v7, 0x1e

    const/4 v8, 0x0

    move-object v1, p0

    move-object v2, p1

    invoke-direct/range {v1 .. v8}, Lcom/motorola/camera/ui/controls_2020/settings/preferences/generic/SummaryPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IILjava/lang/Integer;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 9

    .line 2
    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/ExceptionsKt;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/16 v7, 0x1c

    const/4 v8, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    invoke-direct/range {v1 .. v8}, Lcom/motorola/camera/ui/controls_2020/settings/preferences/generic/SummaryPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IILjava/lang/Integer;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 9

    .line 3
    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/ExceptionsKt;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/16 v7, 0x18

    const/4 v8, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    invoke-direct/range {v1 .. v8}, Lcom/motorola/camera/ui/controls_2020/settings/preferences/generic/SummaryPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IILjava/lang/Integer;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 9

    .line 4
    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/ExceptionsKt;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v6, 0x0

    const/16 v7, 0x10

    const/4 v8, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move v5, p4

    invoke-direct/range {v1 .. v8}, Lcom/motorola/camera/ui/controls_2020/settings/preferences/generic/SummaryPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IILjava/lang/Integer;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;IILjava/lang/Integer;)V
    .locals 0

    .line 5
    const-string p5, "context"

    invoke-static {p1, p5}, Lkotlin/ExceptionsKt;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1, p2, p3, p4}, Landroidx/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    new-instance p1, Lcom/motorola/camera/ui/controls_2020/settings/preferences/generic/RoundedPreferenceImpl;

    invoke-direct {p1}, Lcom/motorola/camera/ui/controls_2020/settings/preferences/generic/RoundedPreferenceImpl;-><init>()V

    iput-object p1, p0, Lcom/motorola/camera/ui/controls_2020/settings/preferences/generic/SummaryPreference;->$$delegate_0:Lcom/motorola/camera/ui/controls_2020/settings/preferences/generic/RoundedPreferenceImpl;

    return-void
.end method

.method public synthetic constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;IILjava/lang/Integer;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 7

    .line 6
    and-int/lit8 p7, p6, 0x2

    const/4 v0, 0x0

    if-eqz p7, :cond_0

    move-object v3, v0

    goto :goto_0

    :cond_0
    move-object v3, p2

    :goto_0
    and-int/lit8 p2, p6, 0x4

    if-eqz p2, :cond_1

    const p3, 0x7f04040a

    :cond_1
    move v4, p3

    and-int/lit8 p2, p6, 0x8

    if-eqz p2, :cond_2

    const/4 p4, 0x0

    :cond_2
    move v5, p4

    and-int/lit8 p2, p6, 0x10

    if-eqz p2, :cond_3

    move-object v6, v0

    goto :goto_1

    :cond_3
    move-object v6, p5

    :goto_1
    move-object v1, p0

    move-object v2, p1

    invoke-direct/range {v1 .. v6}, Lcom/motorola/camera/ui/controls_2020/settings/preferences/generic/SummaryPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IILjava/lang/Integer;)V

    return-void
.end method


# virtual methods
.method public getSummaryString()Ljava/lang/String;
    .locals 0

    const-string p0, ""

    return-object p0
.end method

.method public final onAttached()V
    .locals 1

    invoke-super {p0}, Landroidx/preference/Preference;->onAttached()V

    invoke-virtual {p0}, Lcom/motorola/camera/ui/controls_2020/settings/preferences/generic/SummaryPreference;->getSummaryString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public final onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V
    .locals 2

    invoke-super {p0, p1}, Landroidx/preference/Preference;->onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V

    iget-object v0, p0, Landroidx/preference/Preference;->mContext:Landroid/content/Context;

    const-string v1, "context"

    invoke-static {v0, v1}, Lkotlin/ExceptionsKt;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    const-string v1, "holder.itemView"

    invoke-static {p1, v1}, Lkotlin/ExceptionsKt;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/motorola/camera/ui/controls_2020/settings/preferences/generic/SummaryPreference;->$$delegate_0:Lcom/motorola/camera/ui/controls_2020/settings/preferences/generic/RoundedPreferenceImpl;

    invoke-virtual {p0, v0, p1}, Lcom/motorola/camera/ui/controls_2020/settings/preferences/generic/RoundedPreferenceImpl;->setRoundedPreferenceStyle(Landroid/content/Context;Landroid/view/View;)V

    return-void
.end method

.method public final setBackgroundDrawable(I)V
    .locals 0

    iget-object p0, p0, Lcom/motorola/camera/ui/controls_2020/settings/preferences/generic/SummaryPreference;->$$delegate_0:Lcom/motorola/camera/ui/controls_2020/settings/preferences/generic/RoundedPreferenceImpl;

    invoke-virtual {p0, p1}, Lcom/motorola/camera/ui/controls_2020/settings/preferences/generic/RoundedPreferenceImpl;->setBackgroundDrawable(I)V

    return-void
.end method
