.class public Lcom/ss/android/a/c$a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ss/android/a/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field public a:I

.field public b:I

.field public c:I

.field public d:J

.field public e:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/ss/android/a/c$1;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Lcom/ss/android/a/c$a;-><init>()V

    return-void
.end method

.method public static synthetic a(Lcom/ss/android/a/c$a;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/ss/android/a/c$a;->a:I

    return p0
.end method

.method public static synthetic a(Lcom/ss/android/a/c$a;I)I
    .locals 0

    .line 2
    iput p1, p0, Lcom/ss/android/a/c$a;->a:I

    return p1
.end method

.method public static synthetic a(Lcom/ss/android/a/c$a;J)J
    .locals 0

    .line 3
    iput-wide p1, p0, Lcom/ss/android/a/c$a;->d:J

    return-wide p1
.end method

.method public static synthetic a(Lcom/ss/android/a/c$a;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 4
    iput-object p1, p0, Lcom/ss/android/a/c$a;->e:Ljava/lang/String;

    return-object p1
.end method

.method public static synthetic b(Lcom/ss/android/a/c$a;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/ss/android/a/c$a;->c:I

    return p0
.end method

.method public static synthetic b(Lcom/ss/android/a/c$a;I)I
    .locals 0

    .line 2
    iput p1, p0, Lcom/ss/android/a/c$a;->b:I

    return p1
.end method

.method public static synthetic c(Lcom/ss/android/a/c$a;I)I
    .locals 0

    .line 1
    iput p1, p0, Lcom/ss/android/a/c$a;->c:I

    return p1
.end method

.method public static synthetic c(Lcom/ss/android/a/c$a;)J
    .locals 2

    .line 2
    iget-wide v0, p0, Lcom/ss/android/a/c$a;->d:J

    return-wide v0
.end method

.method public static synthetic d(Lcom/ss/android/a/c$a;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/ss/android/a/c$a;->b:I

    return p0
.end method

.method public static synthetic e(Lcom/ss/android/a/c$a;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/ss/android/a/c$a;->e:Ljava/lang/String;

    return-object p0
.end method
