.class public final Lcom/motorola/camera/SecureDataHelper;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static sInstance:Lcom/motorola/camera/SecureDataHelper;


# instance fields
.field public final mSecureDataList:Ljava/util/LinkedList;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/motorola/camera/SecureDataHelper;->mSecureDataList:Ljava/util/LinkedList;

    return-void
.end method
