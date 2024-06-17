.class public final Landroidx/profileinstaller/DeviceProfileWriter;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final mApkName:Ljava/lang/String;

.field public final mCurProfile:Ljava/io/File;

.field public final mDesiredVersion:[B

.field public mDeviceSupportsAotProfile:Z

.field public final mDiagnostics:Landroidx/profileinstaller/ProfileInstaller$DiagnosticsCallback;

.field public final mExecutor:Ljava/util/concurrent/Executor;

.field public mProfile:[Landroidx/profileinstaller/DexProfileData;

.field public mTranscodedProfile:[B


# direct methods
.method public constructor <init>(Landroid/content/res/AssetManager;Landroidx/arch/core/executor/ArchTaskExecutor$$ExternalSyntheticLambda0;Lcom/google/common/base/Joiner;Ljava/lang/String;Ljava/io/File;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    iput-boolean p1, p0, Landroidx/profileinstaller/DeviceProfileWriter;->mDeviceSupportsAotProfile:Z

    iput-object p2, p0, Landroidx/profileinstaller/DeviceProfileWriter;->mExecutor:Ljava/util/concurrent/Executor;

    iput-object p3, p0, Landroidx/profileinstaller/DeviceProfileWriter;->mDiagnostics:Landroidx/profileinstaller/ProfileInstaller$DiagnosticsCallback;

    iput-object p4, p0, Landroidx/profileinstaller/DeviceProfileWriter;->mApkName:Ljava/lang/String;

    iput-object p5, p0, Landroidx/profileinstaller/DeviceProfileWriter;->mCurProfile:Ljava/io/File;

    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 p2, 0x21

    if-le p1, p2, :cond_0

    goto :goto_0

    :cond_0
    packed-switch p1, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    sget-object p1, Landroidx/profileinstaller/ProfileVersion;->V015_S:[B

    goto :goto_1

    :goto_0
    const/4 p1, 0x0

    :goto_1
    iput-object p1, p0, Landroidx/profileinstaller/DeviceProfileWriter;->mDesiredVersion:[B

    return-void

    :pswitch_data_0
    .packed-switch 0x1f
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public final openStreamFromAssets(Landroid/content/res/AssetManager;Ljava/lang/String;)Ljava/io/FileInputStream;
    .locals 0

    :try_start_0
    invoke-virtual {p1, p2}, Landroid/content/res/AssetManager;->openFd(Ljava/lang/String;)Landroid/content/res/AssetFileDescriptor;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/AssetFileDescriptor;->createInputStream()Ljava/io/FileInputStream;

    move-result-object p0
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_0

    const-string p2, "compressed"

    invoke-virtual {p1, p2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p0, p0, Landroidx/profileinstaller/DeviceProfileWriter;->mDiagnostics:Landroidx/profileinstaller/ProfileInstaller$DiagnosticsCallback;

    invoke-interface {p0}, Landroidx/profileinstaller/ProfileInstaller$DiagnosticsCallback;->onDiagnosticReceived()V

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public final result(ILjava/io/Serializable;)V
    .locals 2

    new-instance v0, Landroidx/media3/common/util/ListenerSet$$ExternalSyntheticLambda1;

    const/4 v1, 0x3

    invoke-direct {v0, p0, p1, p2, v1}, Landroidx/media3/common/util/ListenerSet$$ExternalSyntheticLambda1;-><init>(Ljava/lang/Object;ILjava/lang/Object;I)V

    iget-object p0, p0, Landroidx/profileinstaller/DeviceProfileWriter;->mExecutor:Ljava/util/concurrent/Executor;

    invoke-interface {p0, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method
