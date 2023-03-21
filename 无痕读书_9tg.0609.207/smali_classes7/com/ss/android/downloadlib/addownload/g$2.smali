.class public Lcom/ss/android/downloadlib/addownload/g$2;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/ss/android/downloadlib/g/j$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ss/android/downloadlib/addownload/g;->b(Lcom/ss/android/download/api/config/s;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/ss/android/download/api/config/s;

.field public final synthetic b:Lcom/ss/android/downloadlib/addownload/g;


# direct methods
.method public constructor <init>(Lcom/ss/android/downloadlib/addownload/g;Lcom/ss/android/download/api/config/s;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/ss/android/downloadlib/addownload/g$2;->b:Lcom/ss/android/downloadlib/addownload/g;

    iput-object p2, p0, Lcom/ss/android/downloadlib/addownload/g$2;->a:Lcom/ss/android/download/api/config/s;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ss/android/downloadlib/addownload/g$2;->a:Lcom/ss/android/download/api/config/s;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0}, Lcom/ss/android/download/api/config/s;->a()V

    :cond_0
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 1

    .line 3
    iget-object v0, p0, Lcom/ss/android/downloadlib/addownload/g$2;->a:Lcom/ss/android/download/api/config/s;

    if-eqz v0, :cond_0

    .line 4
    invoke-interface {v0, p1}, Lcom/ss/android/download/api/config/s;->a(Ljava/lang/String;)V

    :cond_0
    return-void
.end method
