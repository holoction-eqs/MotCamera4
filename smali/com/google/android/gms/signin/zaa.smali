.class public final Lcom/google/android/gms/signin/zaa;
.super Lcom/google/android/gms/internal/mlkit_vision_barcode/zzlq;
.source "SourceFile"


# instance fields
.field public final synthetic $r8$classId:I


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    iput p1, p0, Lcom/google/android/gms/signin/zaa;->$r8$classId:I

    invoke-direct {p0}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzlq;-><init>()V

    return-void
.end method


# virtual methods
.method public final buildClient(Landroid/content/Context;Landroid/os/Looper;Lcom/google/android/gms/common/internal/ClientSettings;Lcom/google/android/gms/common/api/Api$ApiOptions;Lcom/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks;Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;)Lcom/google/android/gms/common/internal/GmsClient;
    .locals 8

    const/4 v0, 0x0

    iget p0, p0, Lcom/google/android/gms/signin/zaa;->$r8$classId:I

    sparse-switch p0, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    invoke-static {p4}, Lcom/airbnb/lottie/L$$ExternalSyntheticOutline0;->m(Lcom/google/android/gms/common/api/Api$ApiOptions;)V

    throw v0

    :sswitch_1
    check-cast p4, Lcom/google/android/gms/signin/SignInOptions;

    new-instance p0, Lcom/google/android/gms/signin/internal/SignInClientImpl;

    iget-object p4, p3, Lcom/google/android/gms/common/internal/ClientSettings;->zaj:Ljava/lang/Integer;

    new-instance v5, Landroid/os/Bundle;

    invoke-direct {v5}, Landroid/os/Bundle;-><init>()V

    const-string v1, "com.google.android.gms.signin.internal.clientRequestedAccount"

    iget-object v2, p3, Lcom/google/android/gms/common/internal/ClientSettings;->zaa:Landroid/accounts/Account;

    invoke-virtual {v5, v1, v2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    if-eqz p4, :cond_0

    const-string v1, "com.google.android.gms.common.internal.ClientSettings.sessionId"

    invoke-virtual {p4}, Ljava/lang/Integer;->intValue()I

    move-result p4

    invoke-virtual {v5, v1, p4}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    :cond_0
    const-string p4, "com.google.android.gms.signin.internal.offlineAccessRequested"

    const/4 v1, 0x0

    invoke-virtual {v5, p4, v1}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    const-string p4, "com.google.android.gms.signin.internal.idTokenRequested"

    invoke-virtual {v5, p4, v1}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    const-string p4, "com.google.android.gms.signin.internal.serverClientId"

    invoke-virtual {v5, p4, v0}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p4, "com.google.android.gms.signin.internal.usePromptModeForAuthCode"

    const/4 v2, 0x1

    invoke-virtual {v5, p4, v2}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    const-string p4, "com.google.android.gms.signin.internal.forceCodeForRefreshToken"

    invoke-virtual {v5, p4, v1}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    const-string p4, "com.google.android.gms.signin.internal.hostedDomain"

    invoke-virtual {v5, p4, v0}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p4, "com.google.android.gms.signin.internal.logSessionId"

    invoke-virtual {v5, p4, v0}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p4, "com.google.android.gms.signin.internal.waitForAccessTokenRefresh"

    invoke-virtual {v5, p4, v1}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v6, p5

    move-object v7, p6

    invoke-direct/range {v1 .. v7}, Lcom/google/android/gms/signin/internal/SignInClientImpl;-><init>(Landroid/content/Context;Landroid/os/Looper;Lcom/google/android/gms/common/internal/ClientSettings;Landroid/os/Bundle;Lcom/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks;Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;)V

    return-object p0

    :goto_0
    packed-switch p0, :pswitch_data_0

    goto :goto_2

    :pswitch_0
    check-cast p4, Lcom/google/android/gms/common/api/Api$ApiOptions$NoOptions;

    new-instance p0, Lcom/google/android/gms/common/moduleinstall/internal/zaz;

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p5

    move-object v5, p6

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/common/moduleinstall/internal/zaz;-><init>(Landroid/content/Context;Landroid/os/Looper;Lcom/google/android/gms/common/internal/ClientSettings;Lcom/google/android/gms/common/api/internal/ConnectionCallbacks;Lcom/google/android/gms/common/api/internal/OnConnectionFailedListener;)V

    goto :goto_1

    :pswitch_1
    move-object v4, p4

    check-cast v4, Lcom/google/android/gms/common/internal/TelemetryLoggingOptions;

    new-instance p0, Lcom/google/android/gms/common/internal/service/zap;

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v5, p5

    move-object v6, p6

    invoke-direct/range {v0 .. v6}, Lcom/google/android/gms/common/internal/service/zap;-><init>(Landroid/content/Context;Landroid/os/Looper;Lcom/google/android/gms/common/internal/ClientSettings;Lcom/google/android/gms/common/internal/TelemetryLoggingOptions;Lcom/google/android/gms/common/api/internal/ConnectionCallbacks;Lcom/google/android/gms/common/api/internal/OnConnectionFailedListener;)V

    :goto_1
    return-object p0

    :goto_2
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "buildClient must be implemented"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0

    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_1
        0x3 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
