.class public Lcom/ss/android/downloadlib/addownload/compliance/c$a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ss/android/downloadlib/addownload/compliance/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# static fields
.field public static a:Lcom/ss/android/downloadlib/addownload/compliance/c;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/ss/android/downloadlib/addownload/compliance/c;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/ss/android/downloadlib/addownload/compliance/c;-><init>(Lcom/ss/android/downloadlib/addownload/compliance/c$1;)V

    sput-object v0, Lcom/ss/android/downloadlib/addownload/compliance/c$a;->a:Lcom/ss/android/downloadlib/addownload/compliance/c;

    return-void
.end method

.method public static synthetic a()Lcom/ss/android/downloadlib/addownload/compliance/c;
    .locals 1

    .line 1
    sget-object v0, Lcom/ss/android/downloadlib/addownload/compliance/c$a;->a:Lcom/ss/android/downloadlib/addownload/compliance/c;

    return-object v0
.end method
