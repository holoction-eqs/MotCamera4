.class public final enum Lcom/motorola/camera/utility/ZoomSegment;
.super Ljava/lang/Enum;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation build Landroidx/annotation/Keep;
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/motorola/camera/utility/ZoomSegment;",
        ">;",
        "Landroid/os/Parcelable;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000$\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u000b\u0008\u0087\u0001\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00000\u00012\u00020\u0002B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0003J\t\u0010\u0004\u001a\u00020\u0005H\u00d6\u0001J\u0019\u0010\u0006\u001a\u00020\u00072\u0006\u0010\u0008\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\u0005H\u00d6\u0001j\u0002\u0008\u000bj\u0002\u0008\u000cj\u0002\u0008\rj\u0002\u0008\u000ej\u0002\u0008\u000fj\u0002\u0008\u0010j\u0002\u0008\u0011j\u0002\u0008\u0012j\u0002\u0008\u0013\u00a8\u0006\u0014"
    }
    d2 = {
        "Lcom/motorola/camera/utility/ZoomSegment;",
        "",
        "Landroid/os/Parcelable;",
        "(Ljava/lang/String;I)V",
        "describeContents",
        "",
        "writeToParcel",
        "",
        "parcel",
        "Landroid/os/Parcel;",
        "flags",
        "UW",
        "W",
        "T",
        "M",
        "W_2X",
        "PO",
        "PW",
        "PS",
        "PC",
        "MotCamera4-v9.1.0.91_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x8,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/motorola/camera/utility/ZoomSegment;

.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/motorola/camera/utility/ZoomSegment;",
            ">;"
        }
    .end annotation
.end field

.field public static final enum M:Lcom/motorola/camera/utility/ZoomSegment;

.field public static final enum PC:Lcom/motorola/camera/utility/ZoomSegment;

.field public static final enum PO:Lcom/motorola/camera/utility/ZoomSegment;

.field public static final enum PS:Lcom/motorola/camera/utility/ZoomSegment;

.field public static final enum PW:Lcom/motorola/camera/utility/ZoomSegment;

.field public static final enum T:Lcom/motorola/camera/utility/ZoomSegment;

.field public static final enum UW:Lcom/motorola/camera/utility/ZoomSegment;

.field public static final enum W:Lcom/motorola/camera/utility/ZoomSegment;

.field public static final enum W_2X:Lcom/motorola/camera/utility/ZoomSegment;


# direct methods
.method private static final synthetic $values()[Lcom/motorola/camera/utility/ZoomSegment;
    .locals 9

    sget-object v0, Lcom/motorola/camera/utility/ZoomSegment;->UW:Lcom/motorola/camera/utility/ZoomSegment;

    sget-object v1, Lcom/motorola/camera/utility/ZoomSegment;->W:Lcom/motorola/camera/utility/ZoomSegment;

    sget-object v2, Lcom/motorola/camera/utility/ZoomSegment;->T:Lcom/motorola/camera/utility/ZoomSegment;

    sget-object v3, Lcom/motorola/camera/utility/ZoomSegment;->M:Lcom/motorola/camera/utility/ZoomSegment;

    sget-object v4, Lcom/motorola/camera/utility/ZoomSegment;->W_2X:Lcom/motorola/camera/utility/ZoomSegment;

    sget-object v5, Lcom/motorola/camera/utility/ZoomSegment;->PO:Lcom/motorola/camera/utility/ZoomSegment;

    sget-object v6, Lcom/motorola/camera/utility/ZoomSegment;->PW:Lcom/motorola/camera/utility/ZoomSegment;

    sget-object v7, Lcom/motorola/camera/utility/ZoomSegment;->PS:Lcom/motorola/camera/utility/ZoomSegment;

    sget-object v8, Lcom/motorola/camera/utility/ZoomSegment;->PC:Lcom/motorola/camera/utility/ZoomSegment;

    filled-new-array/range {v0 .. v8}, [Lcom/motorola/camera/utility/ZoomSegment;

    move-result-object v0

    return-object v0
.end method

.method public static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/motorola/camera/utility/ZoomSegment;

    const-string v1, "UW"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/motorola/camera/utility/ZoomSegment;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/motorola/camera/utility/ZoomSegment;->UW:Lcom/motorola/camera/utility/ZoomSegment;

    new-instance v0, Lcom/motorola/camera/utility/ZoomSegment;

    const-string v1, "W"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/motorola/camera/utility/ZoomSegment;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/motorola/camera/utility/ZoomSegment;->W:Lcom/motorola/camera/utility/ZoomSegment;

    new-instance v0, Lcom/motorola/camera/utility/ZoomSegment;

    const-string v1, "T"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/motorola/camera/utility/ZoomSegment;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/motorola/camera/utility/ZoomSegment;->T:Lcom/motorola/camera/utility/ZoomSegment;

    new-instance v0, Lcom/motorola/camera/utility/ZoomSegment;

    const-string v1, "M"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lcom/motorola/camera/utility/ZoomSegment;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/motorola/camera/utility/ZoomSegment;->M:Lcom/motorola/camera/utility/ZoomSegment;

    new-instance v0, Lcom/motorola/camera/utility/ZoomSegment;

    const-string v1, "W_2X"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2}, Lcom/motorola/camera/utility/ZoomSegment;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/motorola/camera/utility/ZoomSegment;->W_2X:Lcom/motorola/camera/utility/ZoomSegment;

    new-instance v0, Lcom/motorola/camera/utility/ZoomSegment;

    const-string v1, "PO"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/motorola/camera/utility/ZoomSegment;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/motorola/camera/utility/ZoomSegment;->PO:Lcom/motorola/camera/utility/ZoomSegment;

    new-instance v0, Lcom/motorola/camera/utility/ZoomSegment;

    const-string v1, "PW"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/motorola/camera/utility/ZoomSegment;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/motorola/camera/utility/ZoomSegment;->PW:Lcom/motorola/camera/utility/ZoomSegment;

    new-instance v0, Lcom/motorola/camera/utility/ZoomSegment;

    const-string v1, "PS"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcom/motorola/camera/utility/ZoomSegment;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/motorola/camera/utility/ZoomSegment;->PS:Lcom/motorola/camera/utility/ZoomSegment;

    new-instance v0, Lcom/motorola/camera/utility/ZoomSegment;

    const-string v1, "PC"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Lcom/motorola/camera/utility/ZoomSegment;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/motorola/camera/utility/ZoomSegment;->PC:Lcom/motorola/camera/utility/ZoomSegment;

    invoke-static {}, Lcom/motorola/camera/utility/ZoomSegment;->$values()[Lcom/motorola/camera/utility/ZoomSegment;

    move-result-object v0

    sput-object v0, Lcom/motorola/camera/utility/ZoomSegment;->$VALUES:[Lcom/motorola/camera/utility/ZoomSegment;

    new-instance v0, Lcom/google/android/gms/signin/internal/zab;

    const/16 v1, 0x19

    invoke-direct {v0, v1}, Lcom/google/android/gms/signin/internal/zab;-><init>(I)V

    sput-object v0, Lcom/motorola/camera/utility/ZoomSegment;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/motorola/camera/utility/ZoomSegment;
    .locals 1

    const-class v0, Lcom/motorola/camera/utility/ZoomSegment;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/motorola/camera/utility/ZoomSegment;

    return-object p0
.end method

.method public static values()[Lcom/motorola/camera/utility/ZoomSegment;
    .locals 1

    sget-object v0, Lcom/motorola/camera/utility/ZoomSegment;->$VALUES:[Lcom/motorola/camera/utility/ZoomSegment;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/motorola/camera/utility/ZoomSegment;

    return-object v0
.end method


# virtual methods
.method public describeContents()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    const-string p2, "out"

    invoke-static {p1, p2}, Lkotlin/ExceptionsKt;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void
.end method
