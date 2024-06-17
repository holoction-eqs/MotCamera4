.class public Lmotorola/wrap/android/hardware/face/FaceManager_wrap;
.super Lmotorola/wrap/android/hardware/biometrics/BiometricManager_wrap;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmotorola/wrap/android/hardware/face/FaceManager_wrap$EnrollmentCallback_wrap;
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0, v0}, Lmotorola/wrap/android/hardware/biometrics/BiometricManager_wrap;-><init>(Landroid/content/Context;Landroid/os/Handler;)V

    new-instance p0, Ljava/lang/RuntimeException;

    const-string v0, "Stub!"

    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static getInstance(Landroid/content/Context;)Lmotorola/wrap/android/hardware/face/FaceManager_wrap;
    .locals 1

    .line 1
    new-instance p0, Ljava/lang/RuntimeException;

    const-string v0, "Stub!"

    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static getInstance(Landroid/content/Context;Landroid/os/Handler;)Lmotorola/wrap/android/hardware/face/FaceManager_wrap;
    .locals 0

    .line 2
    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "Stub!"

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public enroll(I[BLandroid/os/CancellationSignal;Lmotorola/wrap/android/hardware/face/FaceManager_wrap$EnrollmentCallback_wrap;[I)V
    .locals 0

    .line 1
    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "Stub!"

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public enroll(I[BLandroid/os/CancellationSignal;Lmotorola/wrap/android/hardware/face/FaceManager_wrap$EnrollmentCallback_wrap;[ILandroid/view/Surface;Z)V
    .locals 0

    .line 2
    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "Stub!"

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public hasEnrolledTemplates()Z
    .locals 1

    new-instance p0, Ljava/lang/RuntimeException;

    const-string v0, "Stub!"

    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public hasEnrolledTemplatesWrap()Z
    .locals 1

    .line 1
    new-instance p0, Ljava/lang/RuntimeException;

    const-string v0, "Stub!"

    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public hasEnrolledTemplatesWrap(I)Z
    .locals 0

    .line 2
    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "Stub!"

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public registerFaceStateListener(Lmotorola/wrap/android/hardware/biometrics/BiometricStateListener_wrap;)V
    .locals 0

    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "Stub!"

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public unregisterFaceStateListener(Lmotorola/wrap/android/hardware/biometrics/BiometricStateListener_wrap;)V
    .locals 0

    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "Stub!"

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
