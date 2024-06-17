.class public abstract Lcom/google/android/gms/tasks/TaskExecutors;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final MAIN_THREAD:Lcom/google/android/gms/tasks/zzu;

.field public static final zza:Lcom/google/android/gms/tasks/zzt;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/google/android/gms/tasks/zzu;

    invoke-direct {v0}, Lcom/google/android/gms/tasks/zzu;-><init>()V

    sput-object v0, Lcom/google/android/gms/tasks/TaskExecutors;->MAIN_THREAD:Lcom/google/android/gms/tasks/zzu;

    new-instance v0, Lcom/google/android/gms/tasks/zzt;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/android/gms/tasks/zzt;-><init>(I)V

    sput-object v0, Lcom/google/android/gms/tasks/TaskExecutors;->zza:Lcom/google/android/gms/tasks/zzt;

    return-void
.end method
