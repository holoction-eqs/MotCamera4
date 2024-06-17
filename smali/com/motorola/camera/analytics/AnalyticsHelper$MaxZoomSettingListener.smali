.class public final Lcom/motorola/camera/analytics/AnalyticsHelper$MaxZoomSettingListener;
.super Lcom/motorola/camera/analytics/AnalyticsHelper$MaxSettingListenerBase;
.source "SourceFile"


# instance fields
.field public final synthetic $r8$classId:I


# direct methods
.method public constructor <init>(I)V
    .locals 1

    iput p1, p0, Lcom/motorola/camera/analytics/AnalyticsHelper$MaxZoomSettingListener;->$r8$classId:I

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    sget-object p1, Lcom/motorola/camera/settings/SettingsManager;->ZOOM:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-direct {p0, p1}, Lcom/motorola/camera/analytics/AnalyticsHelper$MaxSettingListenerBase;-><init>(Lcom/motorola/camera/settings/SettingsManager$Key;)V

    return-void

    :cond_0
    sget-object p1, Lcom/motorola/camera/settings/SettingsManager;->TORCH:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-direct {p0, p1}, Lcom/motorola/camera/analytics/AnalyticsHelper$MaxSettingListenerBase;-><init>(Lcom/motorola/camera/settings/SettingsManager$Key;)V

    return-void

    :cond_1
    sget-object p1, Lcom/motorola/camera/settings/SettingsManager;->AE_COMPENSATION:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-direct {p0, p1}, Lcom/motorola/camera/analytics/AnalyticsHelper$MaxSettingListenerBase;-><init>(Lcom/motorola/camera/settings/SettingsManager$Key;)V

    return-void
.end method


# virtual methods
.method public final onChange(Lcom/motorola/camera/settings/Setting;)V
    .locals 2

    iget v0, p0, Lcom/motorola/camera/analytics/AnalyticsHelper$MaxZoomSettingListener;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iget-object p1, p1, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Integer;

    iget-object v0, p0, Lcom/motorola/camera/analytics/AnalyticsHelper$MaxSettingListenerBase;->mMaxValue:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    if-gt v0, v1, :cond_0

    iput-object p1, p0, Lcom/motorola/camera/analytics/AnalyticsHelper$MaxSettingListenerBase;->mMaxValue:Ljava/lang/Object;

    :cond_0
    return-void

    :pswitch_1
    iget-object v0, p0, Lcom/motorola/camera/analytics/AnalyticsHelper$MaxSettingListenerBase;->mMaxValue:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    iget-object p1, p1, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    invoke-static {v0, p1}, Ljava/lang/Math;->min(FF)F

    move-result p1

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    iput-object p1, p0, Lcom/motorola/camera/analytics/AnalyticsHelper$MaxSettingListenerBase;->mMaxValue:Ljava/lang/Object;

    return-void

    :goto_0
    iget-object v0, p0, Lcom/motorola/camera/analytics/AnalyticsHelper$MaxSettingListenerBase;->mMaxValue:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iget-object p1, p1, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lcom/motorola/camera/analytics/AnalyticsHelper$MaxSettingListenerBase;->mMaxValue:Ljava/lang/Object;

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
