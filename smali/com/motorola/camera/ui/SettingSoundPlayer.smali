.class public final Lcom/motorola/camera/ui/SettingSoundPlayer;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static mSoundExecutorService:Ljava/util/concurrent/ExecutorService;


# instance fields
.field public mLoaded:I

.field public final mSoundMap:Ljava/util/EnumMap;

.field public final mSoundPool:[Landroid/media/SoundPool;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x2

    new-array v0, v0, [Landroid/media/SoundPool;

    iput-object v0, p0, Lcom/motorola/camera/ui/SettingSoundPlayer;->mSoundPool:[Landroid/media/SoundPool;

    new-instance v0, Ljava/util/EnumMap;

    const-class v1, Lcom/motorola/camera/ui/SettingSoundPlayer$Sound;

    invoke-direct {v0, v1}, Ljava/util/EnumMap;-><init>(Ljava/lang/Class;)V

    iput-object v0, p0, Lcom/motorola/camera/ui/SettingSoundPlayer;->mSoundMap:Ljava/util/EnumMap;

    const/4 v0, 0x0

    iput v0, p0, Lcom/motorola/camera/ui/SettingSoundPlayer;->mLoaded:I

    return-void
.end method

.method public static play(Lcom/motorola/camera/ui/SettingSoundPlayer$Sound;)V
    .locals 3

    sget-object v0, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    new-instance v1, Lcom/motorola/camera/ui/SettingSoundPlayer$$ExternalSyntheticLambda0;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/motorola/camera/ui/SettingSoundPlayer$$ExternalSyntheticLambda0;-><init>(Lcom/motorola/camera/ui/SettingSoundPlayer$Sound;I)V

    invoke-virtual {v0, v1}, Lcom/motorola/camera/CameraApp;->postRunnable(Ljava/lang/Runnable;)V

    return-void
.end method
