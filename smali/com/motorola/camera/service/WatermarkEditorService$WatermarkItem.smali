.class public final Lcom/motorola/camera/service/WatermarkEditorService$WatermarkItem;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/motorola/camera/service/WatermarkEditorService$WatermarkItem;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public mFacing:Ljava/lang/String;

.field public mIsRtl:Z

.field public mLayoutDirection:Ljava/lang/String;

.field public mLineHeight:I

.field public mLineYStart:I

.field public mLogoHeight:I

.field public mLogoMargin:I

.field public mLogoWidth:I

.field public mPictureSize:Landroid/util/Size;

.field public mShotByBaseline:I

.field public mShotOnBaseline:I

.field public mShotOnSecondBaseline:I

.field public mTextSizeBy:I

.field public mTextSizeShotOn:I

.field public mWatermarkHeight:I

.field public mWatermarkWidth:I


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/google/android/gms/signin/internal/zab;

    const/16 v1, 0x12

    invoke-direct {v0, v1}, Lcom/google/android/gms/signin/internal/zab;-><init>(I)V

    sput-object v0, Lcom/motorola/camera/service/WatermarkEditorService$WatermarkItem;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/motorola/camera/service/WatermarkEditorService$WatermarkItem;->mLayoutDirection:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Lcom/motorola/camera/service/WatermarkEditorService$WatermarkItem;->mIsRtl:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/motorola/camera/service/WatermarkEditorService$WatermarkItem;->mWatermarkWidth:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/motorola/camera/service/WatermarkEditorService$WatermarkItem;->mWatermarkHeight:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/motorola/camera/service/WatermarkEditorService$WatermarkItem;->mLogoWidth:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/motorola/camera/service/WatermarkEditorService$WatermarkItem;->mLogoHeight:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/motorola/camera/service/WatermarkEditorService$WatermarkItem;->mLineHeight:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/motorola/camera/service/WatermarkEditorService$WatermarkItem;->mTextSizeShotOn:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/motorola/camera/service/WatermarkEditorService$WatermarkItem;->mTextSizeBy:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/motorola/camera/service/WatermarkEditorService$WatermarkItem;->mLogoMargin:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/motorola/camera/service/WatermarkEditorService$WatermarkItem;->mLineYStart:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/motorola/camera/service/WatermarkEditorService$WatermarkItem;->mShotOnBaseline:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/motorola/camera/service/WatermarkEditorService$WatermarkItem;->mShotOnSecondBaseline:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/motorola/camera/service/WatermarkEditorService$WatermarkItem;->mShotByBaseline:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/motorola/camera/service/WatermarkEditorService$WatermarkItem;->mFacing:Ljava/lang/String;

    new-instance v0, Landroid/util/Size;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    invoke-direct {v0, v1, p1}, Landroid/util/Size;-><init>(II)V

    iput-object v0, p0, Lcom/motorola/camera/service/WatermarkEditorService$WatermarkItem;->mPictureSize:Landroid/util/Size;

    return-void
.end method


# virtual methods
.method public final describeContents()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    iget-object p2, p0, Lcom/motorola/camera/service/WatermarkEditorService$WatermarkItem;->mLayoutDirection:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-boolean p2, p0, Lcom/motorola/camera/service/WatermarkEditorService$WatermarkItem;->mIsRtl:Z

    int-to-byte p2, p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    iget p2, p0, Lcom/motorola/camera/service/WatermarkEditorService$WatermarkItem;->mWatermarkWidth:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget p2, p0, Lcom/motorola/camera/service/WatermarkEditorService$WatermarkItem;->mWatermarkHeight:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget p2, p0, Lcom/motorola/camera/service/WatermarkEditorService$WatermarkItem;->mLogoWidth:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget p2, p0, Lcom/motorola/camera/service/WatermarkEditorService$WatermarkItem;->mLogoHeight:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget p2, p0, Lcom/motorola/camera/service/WatermarkEditorService$WatermarkItem;->mLineHeight:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget p2, p0, Lcom/motorola/camera/service/WatermarkEditorService$WatermarkItem;->mTextSizeShotOn:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget p2, p0, Lcom/motorola/camera/service/WatermarkEditorService$WatermarkItem;->mTextSizeBy:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget p2, p0, Lcom/motorola/camera/service/WatermarkEditorService$WatermarkItem;->mLogoMargin:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget p2, p0, Lcom/motorola/camera/service/WatermarkEditorService$WatermarkItem;->mLineYStart:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget p2, p0, Lcom/motorola/camera/service/WatermarkEditorService$WatermarkItem;->mShotOnBaseline:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget p2, p0, Lcom/motorola/camera/service/WatermarkEditorService$WatermarkItem;->mShotOnSecondBaseline:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget p2, p0, Lcom/motorola/camera/service/WatermarkEditorService$WatermarkItem;->mShotByBaseline:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget-object p2, p0, Lcom/motorola/camera/service/WatermarkEditorService$WatermarkItem;->mFacing:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/motorola/camera/service/WatermarkEditorService$WatermarkItem;->mPictureSize:Landroid/util/Size;

    invoke-virtual {p2}, Landroid/util/Size;->getWidth()I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget-object p0, p0, Lcom/motorola/camera/service/WatermarkEditorService$WatermarkItem;->mPictureSize:Landroid/util/Size;

    invoke-virtual {p0}, Landroid/util/Size;->getHeight()I

    move-result p0

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
