.class public Lcom/ss/android/downloadlib/e/c$a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ss/android/downloadlib/e/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# static fields
.field public static a:Lcom/ss/android/downloadlib/e/c;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/ss/android/downloadlib/e/c;

    invoke-direct {v0}, Lcom/ss/android/downloadlib/e/c;-><init>()V

    sput-object v0, Lcom/ss/android/downloadlib/e/c$a;->a:Lcom/ss/android/downloadlib/e/c;

    return-void
.end method

.method public static synthetic a()Lcom/ss/android/downloadlib/e/c;
    .locals 1

    .line 1
    sget-object v0, Lcom/ss/android/downloadlib/e/c$a;->a:Lcom/ss/android/downloadlib/e/c;

    return-object v0
.end method
