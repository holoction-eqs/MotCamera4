.class public final Landroidx/media3/common/util/NetworkTypeObserver$Api31$DisplayInfoCallback;
.super Landroid/telephony/TelephonyCallback;
.source "SourceFile"

# interfaces
.implements Landroid/telephony/TelephonyCallback$DisplayInfoListener;


# instance fields
.field public final instance:Landroidx/media3/common/util/NetworkTypeObserver;


# direct methods
.method public constructor <init>(Landroidx/media3/common/util/NetworkTypeObserver;)V
    .locals 0

    invoke-direct {p0}, Landroid/telephony/TelephonyCallback;-><init>()V

    iput-object p1, p0, Landroidx/media3/common/util/NetworkTypeObserver$Api31$DisplayInfoCallback;->instance:Landroidx/media3/common/util/NetworkTypeObserver;

    return-void
.end method


# virtual methods
.method public final onDisplayInfoChanged(Landroid/telephony/TelephonyDisplayInfo;)V
    .locals 2

    invoke-virtual {p1}, Landroid/telephony/TelephonyDisplayInfo;->getOverrideNetworkType()I

    move-result p1

    const/4 v0, 0x3

    const/4 v1, 0x5

    if-eq p1, v0, :cond_1

    const/4 v0, 0x4

    if-eq p1, v0, :cond_1

    if-ne p1, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    if-eqz p1, :cond_2

    const/16 v1, 0xa

    :cond_2
    iget-object p0, p0, Landroidx/media3/common/util/NetworkTypeObserver$Api31$DisplayInfoCallback;->instance:Landroidx/media3/common/util/NetworkTypeObserver;

    invoke-static {v1, p0}, Landroidx/media3/common/util/NetworkTypeObserver;->access$200(ILandroidx/media3/common/util/NetworkTypeObserver;)V

    return-void
.end method
