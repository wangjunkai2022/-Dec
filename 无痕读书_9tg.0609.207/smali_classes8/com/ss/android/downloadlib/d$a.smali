.class public Lcom/ss/android/downloadlib/d$a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ss/android/downloadlib/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# static fields
.field public static a:Lcom/ss/android/downloadlib/d;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/ss/android/downloadlib/d;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/ss/android/downloadlib/d;-><init>(Lcom/ss/android/downloadlib/d$1;)V

    sput-object v0, Lcom/ss/android/downloadlib/d$a;->a:Lcom/ss/android/downloadlib/d;

    return-void
.end method

.method public static synthetic a()Lcom/ss/android/downloadlib/d;
    .locals 1

    .line 1
    sget-object v0, Lcom/ss/android/downloadlib/d$a;->a:Lcom/ss/android/downloadlib/d;

    return-object v0
.end method
