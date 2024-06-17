.class public final synthetic Lcom/motorola/camera/ui/controls_2020/settings/controller/SettingsController$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/preference/Preference$OnPreferenceClickListener;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Landroidx/preference/SwitchPreferenceCompat;

.field public final synthetic f$1:Ljava/lang/Integer;

.field public final synthetic f$2:Ljava/lang/Integer;


# direct methods
.method public synthetic constructor <init>(Landroidx/preference/SwitchPreferenceCompat;Ljava/lang/Integer;Ljava/lang/Integer;I)V
    .locals 0

    iput p4, p0, Lcom/motorola/camera/ui/controls_2020/settings/controller/SettingsController$$ExternalSyntheticLambda0;->$r8$classId:I

    iput-object p1, p0, Lcom/motorola/camera/ui/controls_2020/settings/controller/SettingsController$$ExternalSyntheticLambda0;->f$0:Landroidx/preference/SwitchPreferenceCompat;

    iput-object p2, p0, Lcom/motorola/camera/ui/controls_2020/settings/controller/SettingsController$$ExternalSyntheticLambda0;->f$1:Ljava/lang/Integer;

    iput-object p3, p0, Lcom/motorola/camera/ui/controls_2020/settings/controller/SettingsController$$ExternalSyntheticLambda0;->f$2:Ljava/lang/Integer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onPreferenceClick(Landroidx/preference/Preference;)V
    .locals 5

    iget v0, p0, Lcom/motorola/camera/ui/controls_2020/settings/controller/SettingsController$$ExternalSyntheticLambda0;->$r8$classId:I

    iget-object v1, p0, Lcom/motorola/camera/ui/controls_2020/settings/controller/SettingsController$$ExternalSyntheticLambda0;->f$1:Ljava/lang/Integer;

    iget-object v2, p0, Lcom/motorola/camera/ui/controls_2020/settings/controller/SettingsController$$ExternalSyntheticLambda0;->f$2:Ljava/lang/Integer;

    const-string v3, "it"

    iget-object p0, p0, Lcom/motorola/camera/ui/controls_2020/settings/controller/SettingsController$$ExternalSyntheticLambda0;->f$0:Landroidx/preference/SwitchPreferenceCompat;

    const-string v4, "$this_apply"

    packed-switch v0, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    invoke-static {p0, v4}, Lkotlin/ExceptionsKt;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1, v3}, Lkotlin/ExceptionsKt;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-boolean p1, p0, Landroidx/preference/TwoStatePreference;->mChecked:Z

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    move-object v1, v2

    :goto_0
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    sget-object v0, Landroidx/core/content/ContextCompat;->sLock:Ljava/lang/Object;

    iget-object v0, p0, Landroidx/preference/Preference;->mContext:Landroid/content/Context;

    invoke-static {v0, p1}, Landroidx/core/content/ContextCompat$Api21Impl;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroidx/preference/Preference;->setIcon(Landroid/graphics/drawable/Drawable;)V

    return-void

    :goto_1
    invoke-static {p0, v4}, Lkotlin/ExceptionsKt;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1, v3}, Lkotlin/ExceptionsKt;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-boolean p1, p0, Landroidx/preference/TwoStatePreference;->mChecked:Z

    if-eqz p1, :cond_1

    goto :goto_2

    :cond_1
    move-object v1, v2

    :goto_2
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    sget-object v0, Landroidx/core/content/ContextCompat;->sLock:Ljava/lang/Object;

    iget-object v0, p0, Landroidx/preference/Preference;->mContext:Landroid/content/Context;

    invoke-static {v0, p1}, Landroidx/core/content/ContextCompat$Api21Impl;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroidx/preference/Preference;->setIcon(Landroid/graphics/drawable/Drawable;)V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
