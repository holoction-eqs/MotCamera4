.class public final enum Lcom/motorola/camera/settings/CameraType;
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
        "Lcom/motorola/camera/settings/CameraType;",
        ">;",
        "Landroid/os/Parcelable;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000.\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u001f\u0008\u0087\u0001\u0018\u0000 ,2\u0008\u0012\u0004\u0012\u00020\u00000\u00012\u00020\u0002:\u0001,B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0003J\t\u0010\u0004\u001a\u00020\u0005H\u00d6\u0001J\u0006\u0010\u0006\u001a\u00020\u0000J\u0006\u0010\u0007\u001a\u00020\u0000J\u0006\u0010\u0008\u001a\u00020\tJ\u0006\u0010\n\u001a\u00020\tJ\u0019\u0010\u000b\u001a\u00020\u000c2\u0006\u0010\r\u001a\u00020\u000e2\u0006\u0010\u000f\u001a\u00020\u0005H\u00d6\u0001j\u0002\u0008\u0010j\u0002\u0008\u0011j\u0002\u0008\u0012j\u0002\u0008\u0013j\u0002\u0008\u0014j\u0002\u0008\u0015j\u0002\u0008\u0016j\u0002\u0008\u0017j\u0002\u0008\u0018j\u0002\u0008\u0019j\u0002\u0008\u001aj\u0002\u0008\u001bj\u0002\u0008\u001cj\u0002\u0008\u001dj\u0002\u0008\u001ej\u0002\u0008\u001fj\u0002\u0008 j\u0002\u0008!j\u0002\u0008\"j\u0002\u0008#j\u0002\u0008$j\u0002\u0008%j\u0002\u0008&j\u0002\u0008\'j\u0002\u0008(j\u0002\u0008)j\u0002\u0008*j\u0002\u0008+\u00a8\u0006-"
    }
    d2 = {
        "Lcom/motorola/camera/settings/CameraType;",
        "",
        "Landroid/os/Parcelable;",
        "(Ljava/lang/String;I)V",
        "describeContents",
        "",
        "getOfflineReprocCameraType",
        "getPhysicalCameraType",
        "hasOfflineReproc",
        "",
        "isOfflineReproc",
        "writeToParcel",
        "",
        "parcel",
        "Landroid/os/Parcel;",
        "flags",
        "FRONT_MAIN",
        "FRONT_MAIN_REPROC",
        "FRONT_WIDE",
        "FRONT_WIDE_REPROC",
        "BACK_MAIN",
        "BACK_MAIN_REPROC",
        "BACK_SLAVE",
        "BACK_WIDE",
        "BACK_WIDE_REPROC",
        "BACK_TELE",
        "BACK_TELE_REPROC",
        "BACK_MACRO",
        "BACK_MACRO_REPROC",
        "BACK_DEPTH",
        "ZOOM_BLENDING",
        "LOGICAL_DEPTH",
        "LOGICAL_DEPTH1X",
        "LOGICAL_DEPTH3X",
        "LOGICAL_DEPTH_SECONDARY",
        "LOGICAL_DEPTH_VIDEO",
        "CLI_MAIN",
        "CLI_MAIN_REPROC",
        "CLI_WIDE",
        "CLI_WIDE_REPROC",
        "CLI_LOGICAL",
        "CLI_ZOOM_BLENDING",
        "DEBUG_ID",
        "UNKNOWN",
        "Companion",
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
.field private static final synthetic $VALUES:[Lcom/motorola/camera/settings/CameraType;

.field public static final enum BACK_DEPTH:Lcom/motorola/camera/settings/CameraType;

.field public static final enum BACK_MACRO:Lcom/motorola/camera/settings/CameraType;

.field public static final enum BACK_MACRO_REPROC:Lcom/motorola/camera/settings/CameraType;

.field public static final enum BACK_MAIN:Lcom/motorola/camera/settings/CameraType;

.field public static final enum BACK_MAIN_REPROC:Lcom/motorola/camera/settings/CameraType;

.field public static final enum BACK_SLAVE:Lcom/motorola/camera/settings/CameraType;

.field public static final enum BACK_TELE:Lcom/motorola/camera/settings/CameraType;

.field public static final enum BACK_TELE_REPROC:Lcom/motorola/camera/settings/CameraType;

.field public static final enum BACK_WIDE:Lcom/motorola/camera/settings/CameraType;

.field public static final enum BACK_WIDE_REPROC:Lcom/motorola/camera/settings/CameraType;

.field public static final enum CLI_LOGICAL:Lcom/motorola/camera/settings/CameraType;

.field public static final enum CLI_MAIN:Lcom/motorola/camera/settings/CameraType;

.field public static final enum CLI_MAIN_REPROC:Lcom/motorola/camera/settings/CameraType;

.field public static final enum CLI_WIDE:Lcom/motorola/camera/settings/CameraType;

.field public static final enum CLI_WIDE_REPROC:Lcom/motorola/camera/settings/CameraType;

.field public static final enum CLI_ZOOM_BLENDING:Lcom/motorola/camera/settings/CameraType;

.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/motorola/camera/settings/CameraType;",
            ">;"
        }
    .end annotation
.end field

.field public static final Companion:Lcom/motorola/camera/settings/CameraType$Companion;

.field public static final enum DEBUG_ID:Lcom/motorola/camera/settings/CameraType;

.field public static final enum FRONT_MAIN:Lcom/motorola/camera/settings/CameraType;

.field public static final enum FRONT_MAIN_REPROC:Lcom/motorola/camera/settings/CameraType;

.field public static final enum FRONT_WIDE:Lcom/motorola/camera/settings/CameraType;

.field public static final enum FRONT_WIDE_REPROC:Lcom/motorola/camera/settings/CameraType;

.field public static final enum LOGICAL_DEPTH:Lcom/motorola/camera/settings/CameraType;

.field public static final enum LOGICAL_DEPTH1X:Lcom/motorola/camera/settings/CameraType;

.field public static final enum LOGICAL_DEPTH3X:Lcom/motorola/camera/settings/CameraType;

.field public static final enum LOGICAL_DEPTH_SECONDARY:Lcom/motorola/camera/settings/CameraType;

.field public static final enum LOGICAL_DEPTH_VIDEO:Lcom/motorola/camera/settings/CameraType;

.field private static final PHYSICAL_TO_REPROCESS:Ljava/util/EnumMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/EnumMap<",
            "Lcom/motorola/camera/settings/CameraType;",
            "Lcom/motorola/camera/settings/CameraType;",
            ">;"
        }
    .end annotation
.end field

.field private static final REPROCESS_TO_PHYSICAL:Ljava/util/EnumMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/EnumMap<",
            "Lcom/motorola/camera/settings/CameraType;",
            "Lcom/motorola/camera/settings/CameraType;",
            ">;"
        }
    .end annotation
.end field

.field public static final enum UNKNOWN:Lcom/motorola/camera/settings/CameraType;

.field public static final enum ZOOM_BLENDING:Lcom/motorola/camera/settings/CameraType;


# direct methods
.method private static final synthetic $values()[Lcom/motorola/camera/settings/CameraType;
    .locals 28

    sget-object v0, Lcom/motorola/camera/settings/CameraType;->FRONT_MAIN:Lcom/motorola/camera/settings/CameraType;

    sget-object v1, Lcom/motorola/camera/settings/CameraType;->FRONT_MAIN_REPROC:Lcom/motorola/camera/settings/CameraType;

    sget-object v2, Lcom/motorola/camera/settings/CameraType;->FRONT_WIDE:Lcom/motorola/camera/settings/CameraType;

    sget-object v3, Lcom/motorola/camera/settings/CameraType;->FRONT_WIDE_REPROC:Lcom/motorola/camera/settings/CameraType;

    sget-object v4, Lcom/motorola/camera/settings/CameraType;->BACK_MAIN:Lcom/motorola/camera/settings/CameraType;

    sget-object v5, Lcom/motorola/camera/settings/CameraType;->BACK_MAIN_REPROC:Lcom/motorola/camera/settings/CameraType;

    sget-object v6, Lcom/motorola/camera/settings/CameraType;->BACK_SLAVE:Lcom/motorola/camera/settings/CameraType;

    sget-object v7, Lcom/motorola/camera/settings/CameraType;->BACK_WIDE:Lcom/motorola/camera/settings/CameraType;

    sget-object v8, Lcom/motorola/camera/settings/CameraType;->BACK_WIDE_REPROC:Lcom/motorola/camera/settings/CameraType;

    sget-object v9, Lcom/motorola/camera/settings/CameraType;->BACK_TELE:Lcom/motorola/camera/settings/CameraType;

    sget-object v10, Lcom/motorola/camera/settings/CameraType;->BACK_TELE_REPROC:Lcom/motorola/camera/settings/CameraType;

    sget-object v11, Lcom/motorola/camera/settings/CameraType;->BACK_MACRO:Lcom/motorola/camera/settings/CameraType;

    sget-object v12, Lcom/motorola/camera/settings/CameraType;->BACK_MACRO_REPROC:Lcom/motorola/camera/settings/CameraType;

    sget-object v13, Lcom/motorola/camera/settings/CameraType;->BACK_DEPTH:Lcom/motorola/camera/settings/CameraType;

    sget-object v14, Lcom/motorola/camera/settings/CameraType;->ZOOM_BLENDING:Lcom/motorola/camera/settings/CameraType;

    sget-object v15, Lcom/motorola/camera/settings/CameraType;->LOGICAL_DEPTH:Lcom/motorola/camera/settings/CameraType;

    sget-object v16, Lcom/motorola/camera/settings/CameraType;->LOGICAL_DEPTH1X:Lcom/motorola/camera/settings/CameraType;

    sget-object v17, Lcom/motorola/camera/settings/CameraType;->LOGICAL_DEPTH3X:Lcom/motorola/camera/settings/CameraType;

    sget-object v18, Lcom/motorola/camera/settings/CameraType;->LOGICAL_DEPTH_SECONDARY:Lcom/motorola/camera/settings/CameraType;

    sget-object v19, Lcom/motorola/camera/settings/CameraType;->LOGICAL_DEPTH_VIDEO:Lcom/motorola/camera/settings/CameraType;

    sget-object v20, Lcom/motorola/camera/settings/CameraType;->CLI_MAIN:Lcom/motorola/camera/settings/CameraType;

    sget-object v21, Lcom/motorola/camera/settings/CameraType;->CLI_MAIN_REPROC:Lcom/motorola/camera/settings/CameraType;

    sget-object v22, Lcom/motorola/camera/settings/CameraType;->CLI_WIDE:Lcom/motorola/camera/settings/CameraType;

    sget-object v23, Lcom/motorola/camera/settings/CameraType;->CLI_WIDE_REPROC:Lcom/motorola/camera/settings/CameraType;

    sget-object v24, Lcom/motorola/camera/settings/CameraType;->CLI_LOGICAL:Lcom/motorola/camera/settings/CameraType;

    sget-object v25, Lcom/motorola/camera/settings/CameraType;->CLI_ZOOM_BLENDING:Lcom/motorola/camera/settings/CameraType;

    sget-object v26, Lcom/motorola/camera/settings/CameraType;->DEBUG_ID:Lcom/motorola/camera/settings/CameraType;

    sget-object v27, Lcom/motorola/camera/settings/CameraType;->UNKNOWN:Lcom/motorola/camera/settings/CameraType;

    filled-new-array/range {v0 .. v27}, [Lcom/motorola/camera/settings/CameraType;

    move-result-object v0

    return-object v0
.end method

.method public static constructor <clinit>()V
    .locals 27

    new-instance v0, Lcom/motorola/camera/settings/CameraType;

    const-string v1, "FRONT_MAIN"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/motorola/camera/settings/CameraType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/motorola/camera/settings/CameraType;->FRONT_MAIN:Lcom/motorola/camera/settings/CameraType;

    new-instance v1, Lcom/motorola/camera/settings/CameraType;

    const-string v2, "FRONT_MAIN_REPROC"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lcom/motorola/camera/settings/CameraType;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/motorola/camera/settings/CameraType;->FRONT_MAIN_REPROC:Lcom/motorola/camera/settings/CameraType;

    new-instance v2, Lcom/motorola/camera/settings/CameraType;

    const-string v3, "FRONT_WIDE"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4}, Lcom/motorola/camera/settings/CameraType;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lcom/motorola/camera/settings/CameraType;->FRONT_WIDE:Lcom/motorola/camera/settings/CameraType;

    new-instance v3, Lcom/motorola/camera/settings/CameraType;

    const-string v4, "FRONT_WIDE_REPROC"

    const/4 v5, 0x3

    invoke-direct {v3, v4, v5}, Lcom/motorola/camera/settings/CameraType;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/motorola/camera/settings/CameraType;->FRONT_WIDE_REPROC:Lcom/motorola/camera/settings/CameraType;

    new-instance v4, Lcom/motorola/camera/settings/CameraType;

    const-string v5, "BACK_MAIN"

    const/4 v6, 0x4

    invoke-direct {v4, v5, v6}, Lcom/motorola/camera/settings/CameraType;-><init>(Ljava/lang/String;I)V

    sput-object v4, Lcom/motorola/camera/settings/CameraType;->BACK_MAIN:Lcom/motorola/camera/settings/CameraType;

    new-instance v5, Lcom/motorola/camera/settings/CameraType;

    const-string v6, "BACK_MAIN_REPROC"

    const/4 v7, 0x5

    invoke-direct {v5, v6, v7}, Lcom/motorola/camera/settings/CameraType;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/motorola/camera/settings/CameraType;->BACK_MAIN_REPROC:Lcom/motorola/camera/settings/CameraType;

    new-instance v6, Lcom/motorola/camera/settings/CameraType;

    const-string v7, "BACK_SLAVE"

    const/4 v8, 0x6

    invoke-direct {v6, v7, v8}, Lcom/motorola/camera/settings/CameraType;-><init>(Ljava/lang/String;I)V

    sput-object v6, Lcom/motorola/camera/settings/CameraType;->BACK_SLAVE:Lcom/motorola/camera/settings/CameraType;

    new-instance v6, Lcom/motorola/camera/settings/CameraType;

    const-string v7, "BACK_WIDE"

    const/4 v8, 0x7

    invoke-direct {v6, v7, v8}, Lcom/motorola/camera/settings/CameraType;-><init>(Ljava/lang/String;I)V

    sput-object v6, Lcom/motorola/camera/settings/CameraType;->BACK_WIDE:Lcom/motorola/camera/settings/CameraType;

    new-instance v7, Lcom/motorola/camera/settings/CameraType;

    const-string v8, "BACK_WIDE_REPROC"

    const/16 v9, 0x8

    invoke-direct {v7, v8, v9}, Lcom/motorola/camera/settings/CameraType;-><init>(Ljava/lang/String;I)V

    sput-object v7, Lcom/motorola/camera/settings/CameraType;->BACK_WIDE_REPROC:Lcom/motorola/camera/settings/CameraType;

    new-instance v8, Lcom/motorola/camera/settings/CameraType;

    const-string v9, "BACK_TELE"

    const/16 v10, 0x9

    invoke-direct {v8, v9, v10}, Lcom/motorola/camera/settings/CameraType;-><init>(Ljava/lang/String;I)V

    sput-object v8, Lcom/motorola/camera/settings/CameraType;->BACK_TELE:Lcom/motorola/camera/settings/CameraType;

    new-instance v9, Lcom/motorola/camera/settings/CameraType;

    const-string v10, "BACK_TELE_REPROC"

    const/16 v11, 0xa

    invoke-direct {v9, v10, v11}, Lcom/motorola/camera/settings/CameraType;-><init>(Ljava/lang/String;I)V

    sput-object v9, Lcom/motorola/camera/settings/CameraType;->BACK_TELE_REPROC:Lcom/motorola/camera/settings/CameraType;

    new-instance v10, Lcom/motorola/camera/settings/CameraType;

    const-string v12, "BACK_MACRO"

    const/16 v13, 0xb

    invoke-direct {v10, v12, v13}, Lcom/motorola/camera/settings/CameraType;-><init>(Ljava/lang/String;I)V

    sput-object v10, Lcom/motorola/camera/settings/CameraType;->BACK_MACRO:Lcom/motorola/camera/settings/CameraType;

    new-instance v12, Lcom/motorola/camera/settings/CameraType;

    const-string v13, "BACK_MACRO_REPROC"

    const/16 v14, 0xc

    invoke-direct {v12, v13, v14}, Lcom/motorola/camera/settings/CameraType;-><init>(Ljava/lang/String;I)V

    sput-object v12, Lcom/motorola/camera/settings/CameraType;->BACK_MACRO_REPROC:Lcom/motorola/camera/settings/CameraType;

    new-instance v13, Lcom/motorola/camera/settings/CameraType;

    const-string v14, "BACK_DEPTH"

    const/16 v15, 0xd

    invoke-direct {v13, v14, v15}, Lcom/motorola/camera/settings/CameraType;-><init>(Ljava/lang/String;I)V

    sput-object v13, Lcom/motorola/camera/settings/CameraType;->BACK_DEPTH:Lcom/motorola/camera/settings/CameraType;

    new-instance v13, Lcom/motorola/camera/settings/CameraType;

    const-string v14, "ZOOM_BLENDING"

    const/16 v15, 0xe

    invoke-direct {v13, v14, v15}, Lcom/motorola/camera/settings/CameraType;-><init>(Ljava/lang/String;I)V

    sput-object v13, Lcom/motorola/camera/settings/CameraType;->ZOOM_BLENDING:Lcom/motorola/camera/settings/CameraType;

    new-instance v13, Lcom/motorola/camera/settings/CameraType;

    const-string v14, "LOGICAL_DEPTH"

    const/16 v15, 0xf

    invoke-direct {v13, v14, v15}, Lcom/motorola/camera/settings/CameraType;-><init>(Ljava/lang/String;I)V

    sput-object v13, Lcom/motorola/camera/settings/CameraType;->LOGICAL_DEPTH:Lcom/motorola/camera/settings/CameraType;

    new-instance v13, Lcom/motorola/camera/settings/CameraType;

    const-string v14, "LOGICAL_DEPTH1X"

    const/16 v15, 0x10

    invoke-direct {v13, v14, v15}, Lcom/motorola/camera/settings/CameraType;-><init>(Ljava/lang/String;I)V

    sput-object v13, Lcom/motorola/camera/settings/CameraType;->LOGICAL_DEPTH1X:Lcom/motorola/camera/settings/CameraType;

    new-instance v13, Lcom/motorola/camera/settings/CameraType;

    const-string v14, "LOGICAL_DEPTH3X"

    const/16 v15, 0x11

    invoke-direct {v13, v14, v15}, Lcom/motorola/camera/settings/CameraType;-><init>(Ljava/lang/String;I)V

    sput-object v13, Lcom/motorola/camera/settings/CameraType;->LOGICAL_DEPTH3X:Lcom/motorola/camera/settings/CameraType;

    new-instance v13, Lcom/motorola/camera/settings/CameraType;

    const-string v14, "LOGICAL_DEPTH_SECONDARY"

    const/16 v15, 0x12

    invoke-direct {v13, v14, v15}, Lcom/motorola/camera/settings/CameraType;-><init>(Ljava/lang/String;I)V

    sput-object v13, Lcom/motorola/camera/settings/CameraType;->LOGICAL_DEPTH_SECONDARY:Lcom/motorola/camera/settings/CameraType;

    new-instance v13, Lcom/motorola/camera/settings/CameraType;

    const-string v14, "LOGICAL_DEPTH_VIDEO"

    const/16 v15, 0x13

    invoke-direct {v13, v14, v15}, Lcom/motorola/camera/settings/CameraType;-><init>(Ljava/lang/String;I)V

    sput-object v13, Lcom/motorola/camera/settings/CameraType;->LOGICAL_DEPTH_VIDEO:Lcom/motorola/camera/settings/CameraType;

    new-instance v13, Lcom/motorola/camera/settings/CameraType;

    const-string v14, "CLI_MAIN"

    const/16 v11, 0x14

    invoke-direct {v13, v14, v11}, Lcom/motorola/camera/settings/CameraType;-><init>(Ljava/lang/String;I)V

    sput-object v13, Lcom/motorola/camera/settings/CameraType;->CLI_MAIN:Lcom/motorola/camera/settings/CameraType;

    new-instance v11, Lcom/motorola/camera/settings/CameraType;

    const-string v14, "CLI_MAIN_REPROC"

    const/16 v15, 0x15

    invoke-direct {v11, v14, v15}, Lcom/motorola/camera/settings/CameraType;-><init>(Ljava/lang/String;I)V

    sput-object v11, Lcom/motorola/camera/settings/CameraType;->CLI_MAIN_REPROC:Lcom/motorola/camera/settings/CameraType;

    new-instance v14, Lcom/motorola/camera/settings/CameraType;

    const-string v15, "CLI_WIDE"

    move-object/from16 v16, v11

    const/16 v11, 0x16

    invoke-direct {v14, v15, v11}, Lcom/motorola/camera/settings/CameraType;-><init>(Ljava/lang/String;I)V

    sput-object v14, Lcom/motorola/camera/settings/CameraType;->CLI_WIDE:Lcom/motorola/camera/settings/CameraType;

    new-instance v11, Lcom/motorola/camera/settings/CameraType;

    const-string v15, "CLI_WIDE_REPROC"

    move-object/from16 v17, v14

    const/16 v14, 0x17

    invoke-direct {v11, v15, v14}, Lcom/motorola/camera/settings/CameraType;-><init>(Ljava/lang/String;I)V

    sput-object v11, Lcom/motorola/camera/settings/CameraType;->CLI_WIDE_REPROC:Lcom/motorola/camera/settings/CameraType;

    new-instance v14, Lcom/motorola/camera/settings/CameraType;

    const-string v15, "CLI_LOGICAL"

    move-object/from16 v18, v11

    const/16 v11, 0x18

    invoke-direct {v14, v15, v11}, Lcom/motorola/camera/settings/CameraType;-><init>(Ljava/lang/String;I)V

    sput-object v14, Lcom/motorola/camera/settings/CameraType;->CLI_LOGICAL:Lcom/motorola/camera/settings/CameraType;

    new-instance v11, Lcom/motorola/camera/settings/CameraType;

    const-string v14, "CLI_ZOOM_BLENDING"

    const/16 v15, 0x19

    invoke-direct {v11, v14, v15}, Lcom/motorola/camera/settings/CameraType;-><init>(Ljava/lang/String;I)V

    sput-object v11, Lcom/motorola/camera/settings/CameraType;->CLI_ZOOM_BLENDING:Lcom/motorola/camera/settings/CameraType;

    new-instance v11, Lcom/motorola/camera/settings/CameraType;

    const-string v14, "DEBUG_ID"

    const/16 v15, 0x1a

    invoke-direct {v11, v14, v15}, Lcom/motorola/camera/settings/CameraType;-><init>(Ljava/lang/String;I)V

    sput-object v11, Lcom/motorola/camera/settings/CameraType;->DEBUG_ID:Lcom/motorola/camera/settings/CameraType;

    new-instance v11, Lcom/motorola/camera/settings/CameraType;

    const-string v14, "UNKNOWN"

    const/16 v15, 0x1b

    invoke-direct {v11, v14, v15}, Lcom/motorola/camera/settings/CameraType;-><init>(Ljava/lang/String;I)V

    sput-object v11, Lcom/motorola/camera/settings/CameraType;->UNKNOWN:Lcom/motorola/camera/settings/CameraType;

    invoke-static {}, Lcom/motorola/camera/settings/CameraType;->$values()[Lcom/motorola/camera/settings/CameraType;

    move-result-object v11

    sput-object v11, Lcom/motorola/camera/settings/CameraType;->$VALUES:[Lcom/motorola/camera/settings/CameraType;

    new-instance v11, Lcom/motorola/camera/settings/CameraType$Companion;

    invoke-direct {v11}, Lcom/motorola/camera/settings/CameraType$Companion;-><init>()V

    sput-object v11, Lcom/motorola/camera/settings/CameraType;->Companion:Lcom/motorola/camera/settings/CameraType$Companion;

    new-instance v11, Lcom/google/android/gms/signin/internal/zab;

    const/16 v14, 0x13

    invoke-direct {v11, v14}, Lcom/google/android/gms/signin/internal/zab;-><init>(I)V

    sput-object v11, Lcom/motorola/camera/settings/CameraType;->CREATOR:Landroid/os/Parcelable$Creator;

    new-instance v11, Ljava/util/EnumMap;

    new-instance v14, Lkotlin/Pair;

    invoke-direct {v14, v0, v1}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    new-instance v0, Lkotlin/Pair;

    invoke-direct {v0, v2, v3}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    new-instance v1, Lkotlin/Pair;

    invoke-direct {v1, v4, v5}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    new-instance v2, Lkotlin/Pair;

    invoke-direct {v2, v6, v7}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    new-instance v3, Lkotlin/Pair;

    invoke-direct {v3, v8, v9}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    new-instance v4, Lkotlin/Pair;

    invoke-direct {v4, v10, v12}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    new-instance v5, Lkotlin/Pair;

    move-object/from16 v6, v16

    invoke-direct {v5, v13, v6}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    new-instance v6, Lkotlin/Pair;

    move-object/from16 v7, v17

    move-object/from16 v8, v18

    invoke-direct {v6, v7, v8}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    move-object/from16 v19, v14

    move-object/from16 v20, v0

    move-object/from16 v21, v1

    move-object/from16 v22, v2

    move-object/from16 v23, v3

    move-object/from16 v24, v4

    move-object/from16 v25, v5

    move-object/from16 v26, v6

    filled-new-array/range {v19 .. v26}, [Lkotlin/Pair;

    move-result-object v0

    invoke-static {v0}, Lkotlin/collections/MapsKt___MapsJvmKt;->mapOf([Lkotlin/Pair;)Ljava/util/Map;

    move-result-object v0

    invoke-direct {v11, v0}, Ljava/util/EnumMap;-><init>(Ljava/util/Map;)V

    sput-object v11, Lcom/motorola/camera/settings/CameraType;->PHYSICAL_TO_REPROCESS:Ljava/util/EnumMap;

    invoke-virtual {v11}, Ljava/util/EnumMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    const-string v1, "PHYSICAL_TO_REPROCESS.entries"

    invoke-static {v0, v1}, Lkotlin/ExceptionsKt;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v1, 0xa

    invoke-static {v0, v1}, Lkotlin/collections/CollectionsKt__IteratorsJVMKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v1

    invoke-static {v1}, Ljms/IJobMgrService$_Parcel;->mapCapacity(I)I

    move-result v1

    const/16 v2, 0x10

    if-ge v1, v2, :cond_0

    move v15, v2

    goto :goto_0

    :cond_0
    move v15, v1

    :goto_0
    new-instance v1, Ljava/util/LinkedHashMap;

    invoke-direct {v1, v15}, Ljava/util/LinkedHashMap;-><init>(I)V

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    const-string v3, "(key, value)"

    invoke-static {v2, v3}, Lkotlin/ExceptionsKt;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/motorola/camera/settings/CameraType;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/motorola/camera/settings/CameraType;

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_1
    new-instance v0, Ljava/util/EnumMap;

    invoke-direct {v0, v1}, Ljava/util/EnumMap;-><init>(Ljava/util/Map;)V

    sput-object v0, Lcom/motorola/camera/settings/CameraType;->REPROCESS_TO_PHYSICAL:Ljava/util/EnumMap;

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

.method public static valueOf(Ljava/lang/String;)Lcom/motorola/camera/settings/CameraType;
    .locals 1

    const-class v0, Lcom/motorola/camera/settings/CameraType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/motorola/camera/settings/CameraType;

    return-object p0
.end method

.method public static values()[Lcom/motorola/camera/settings/CameraType;
    .locals 1

    sget-object v0, Lcom/motorola/camera/settings/CameraType;->$VALUES:[Lcom/motorola/camera/settings/CameraType;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/motorola/camera/settings/CameraType;

    return-object v0
.end method


# virtual methods
.method public describeContents()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public final getOfflineReprocCameraType()Lcom/motorola/camera/settings/CameraType;
    .locals 1

    sget-object v0, Lcom/motorola/camera/settings/CameraType;->PHYSICAL_TO_REPROCESS:Ljava/util/EnumMap;

    invoke-virtual {v0, p0}, Ljava/util/EnumMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/motorola/camera/settings/CameraType;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final getPhysicalCameraType()Lcom/motorola/camera/settings/CameraType;
    .locals 1

    sget-object v0, Lcom/motorola/camera/settings/CameraType;->REPROCESS_TO_PHYSICAL:Ljava/util/EnumMap;

    invoke-virtual {v0, p0}, Ljava/util/EnumMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/motorola/camera/settings/CameraType;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final hasOfflineReproc()Z
    .locals 1

    sget-object v0, Lcom/motorola/camera/settings/CameraType;->PHYSICAL_TO_REPROCESS:Ljava/util/EnumMap;

    invoke-virtual {v0, p0}, Ljava/util/EnumMap;->containsKey(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public final isOfflineReproc()Z
    .locals 1

    sget-object v0, Lcom/motorola/camera/settings/CameraType;->REPROCESS_TO_PHYSICAL:Ljava/util/EnumMap;

    invoke-virtual {v0, p0}, Ljava/util/EnumMap;->containsKey(Ljava/lang/Object;)Z

    move-result p0

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
