.class public abstract Lcom/motorola/camera/background/provider/BgCaptureRecordDataBase;
.super Landroidx/room/RoomDatabase;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000c\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0008\'\u0018\u00002\u00020\u0001:\u0001\u0004B\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003\u00a8\u0006\u0005"
    }
    d2 = {
        "Lcom/motorola/camera/background/provider/BgCaptureRecordDataBase;",
        "Landroidx/room/RoomDatabase;",
        "<init>",
        "()V",
        "_COROUTINE/ArtificialStackFrames",
        "MotCamera-Background_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x8,
        0x0
    }
.end annotation


# static fields
.field public static final Companion:L_COROUTINE/ArtificialStackFrames;

.field public static volatile INSTANCE:Lcom/motorola/camera/background/provider/BgCaptureRecordDataBase;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    new-instance v0, L_COROUTINE/ArtificialStackFrames;

    const/4 v1, 0x4

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, L_COROUTINE/ArtificialStackFrames;-><init>(II)V

    sput-object v0, Lcom/motorola/camera/background/provider/BgCaptureRecordDataBase;->Companion:L_COROUTINE/ArtificialStackFrames;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroidx/room/RoomDatabase;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract captureRecordDao()Lcom/google/android/material/datepicker/CalendarStyle;
.end method
