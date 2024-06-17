.class public final Lcom/motorola/camera/utility/Error;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final mDisplay:I

.field public final mErrorDescription:I

.field public final mSensor:I

.field public final mStorage:I


# direct methods
.method public constructor <init>(Lcom/motorola/camera/utility/Error$ErrorBuilder;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget v0, p1, Lcom/motorola/camera/utility/Error$ErrorBuilder;->sensor:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_2

    sget-object v0, Lcom/motorola/camera/settings/SettingsManager;->CAMERA_FACING:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v0}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object v0

    iget-object v0, v0, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-eqz v0, :cond_1

    if-eq v0, v2, :cond_0

    iput v1, p0, Lcom/motorola/camera/utility/Error;->mSensor:I

    goto :goto_1

    :cond_0
    const/high16 v0, 0x1000000

    goto :goto_0

    :cond_1
    const/high16 v0, 0x2000000

    :cond_2
    :goto_0
    iput v0, p0, Lcom/motorola/camera/utility/Error;->mSensor:I

    :goto_1
    iget v0, p1, Lcom/motorola/camera/utility/Error$ErrorBuilder;->storage:I

    if-nez v0, :cond_5

    sget-object v0, Lcom/motorola/camera/settings/SettingsManager;->STORAGE:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v0}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object v0

    iget-object v0, v0, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-eq v0, v2, :cond_4

    const/4 v2, 0x2

    if-eq v0, v2, :cond_3

    iput v1, p0, Lcom/motorola/camera/utility/Error;->mStorage:I

    goto :goto_3

    :cond_3
    const/high16 v0, 0x800000

    goto :goto_2

    :cond_4
    const/high16 v0, 0x400000

    :cond_5
    :goto_2
    iput v0, p0, Lcom/motorola/camera/utility/Error;->mStorage:I

    :goto_3
    iget v0, p1, Lcom/motorola/camera/utility/Error$ErrorBuilder;->display:I

    iput v0, p0, Lcom/motorola/camera/utility/Error;->mDisplay:I

    iget p1, p1, Lcom/motorola/camera/utility/Error$ErrorBuilder;->errorDescription:I

    iput p1, p0, Lcom/motorola/camera/utility/Error;->mErrorDescription:I

    return-void
.end method


# virtual methods
.method public final getError()I
    .locals 2

    iget v0, p0, Lcom/motorola/camera/utility/Error;->mErrorDescription:I

    iget v1, p0, Lcom/motorola/camera/utility/Error;->mStorage:I

    or-int/2addr v0, v1

    iget v1, p0, Lcom/motorola/camera/utility/Error;->mDisplay:I

    or-int/2addr v0, v1

    iget p0, p0, Lcom/motorola/camera/utility/Error;->mSensor:I

    or-int/2addr p0, v0

    return p0
.end method
