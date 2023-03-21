.class public Lcom/ss/android/download/api/model/a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ss/android/download/api/model/a$a;
    }
.end annotation


# instance fields
.field public a:Ljava/lang/String;

.field public b:Ljava/lang/String;

.field public c:Ljava/lang/String;

.field public d:Ljava/lang/String;

.field public e:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/ss/android/download/api/model/a$a;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    .line 2
    iput-object v0, p0, Lcom/ss/android/download/api/model/a;->b:Ljava/lang/String;

    .line 3
    invoke-static {p1}, Lcom/ss/android/download/api/model/a$a;->a(Lcom/ss/android/download/api/model/a$a;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ss/android/download/api/model/a;->a:Ljava/lang/String;

    .line 4
    invoke-static {p1}, Lcom/ss/android/download/api/model/a$a;->b(Lcom/ss/android/download/api/model/a$a;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ss/android/download/api/model/a;->b:Ljava/lang/String;

    .line 5
    invoke-static {p1}, Lcom/ss/android/download/api/model/a$a;->c(Lcom/ss/android/download/api/model/a$a;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ss/android/download/api/model/a;->c:Ljava/lang/String;

    .line 6
    invoke-static {p1}, Lcom/ss/android/download/api/model/a$a;->d(Lcom/ss/android/download/api/model/a$a;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ss/android/download/api/model/a;->d:Ljava/lang/String;

    .line 7
    invoke-static {p1}, Lcom/ss/android/download/api/model/a$a;->e(Lcom/ss/android/download/api/model/a$a;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/ss/android/download/api/model/a;->e:Ljava/lang/String;

    return-void
.end method
