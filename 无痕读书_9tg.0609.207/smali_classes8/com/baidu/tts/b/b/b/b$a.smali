.class public Lcom/baidu/tts/b/b/b/b$a;
.super Lcom/baidu/tts/m/c;
.source "AudioTrackPlayer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/tts/b/b/b/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/baidu/tts/m/c<",
        "Lcom/baidu/tts/b/b/b/b$a;",
        ">;"
    }
.end annotation


# instance fields
.field public a:I

.field public b:I

.field public c:I

.field public d:I

.field public e:F

.field public f:F

.field public g:I

.field public h:I


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 1
    invoke-direct {p0}, Lcom/baidu/tts/m/c;-><init>()V

    .line 2
    sget-object v0, Lcom/baidu/tts/f/k;->b:Lcom/baidu/tts/f/k;

    invoke-virtual {v0}, Lcom/baidu/tts/f/k;->a()I

    move-result v0

    iput v0, p0, Lcom/baidu/tts/b/b/b/b$a;->a:I

    const/4 v0, 0x4

    .line 3
    iput v0, p0, Lcom/baidu/tts/b/b/b/b$a;->b:I

    const/4 v0, 0x2

    .line 4
    iput v0, p0, Lcom/baidu/tts/b/b/b/b$a;->c:I

    const/4 v1, 0x1

    .line 5
    iput v1, p0, Lcom/baidu/tts/b/b/b/b$a;->d:I

    const/high16 v2, 0x3f800000    # 1.0f

    .line 6
    iput v2, p0, Lcom/baidu/tts/b/b/b/b$a;->e:F

    .line 7
    iput v2, p0, Lcom/baidu/tts/b/b/b/b$a;->f:F

    .line 8
    iput v1, p0, Lcom/baidu/tts/b/b/b/b$a;->g:I

    .line 9
    iput v0, p0, Lcom/baidu/tts/b/b/b/b$a;->h:I

    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/baidu/tts/b/b/b/b$a;->a:I

    return v0
.end method

.method public a(F)V
    .locals 0

    .line 3
    iput p1, p0, Lcom/baidu/tts/b/b/b/b$a;->e:F

    return-void
.end method

.method public a(I)V
    .locals 0

    .line 2
    iput p1, p0, Lcom/baidu/tts/b/b/b/b$a;->a:I

    return-void
.end method

.method public b()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/baidu/tts/b/b/b/b$a;->b:I

    return v0
.end method

.method public b(F)V
    .locals 0

    .line 2
    iput p1, p0, Lcom/baidu/tts/b/b/b/b$a;->f:F

    return-void
.end method

.method public b(I)V
    .locals 0

    .line 3
    iput p1, p0, Lcom/baidu/tts/b/b/b/b$a;->g:I

    return-void
.end method

.method public c()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/baidu/tts/b/b/b/b$a;->c:I

    return v0
.end method

.method public c(I)V
    .locals 0

    .line 2
    iput p1, p0, Lcom/baidu/tts/b/b/b/b$a;->h:I

    return-void
.end method

.method public d()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/baidu/tts/b/b/b/b$a;->d:I

    return v0
.end method

.method public e()F
    .locals 1

    .line 1
    iget v0, p0, Lcom/baidu/tts/b/b/b/b$a;->e:F

    return v0
.end method

.method public f()F
    .locals 1

    .line 1
    iget v0, p0, Lcom/baidu/tts/b/b/b/b$a;->f:F

    return v0
.end method

.method public g()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/baidu/tts/b/b/b/b$a;->g:I

    return v0
.end method

.method public h()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/baidu/tts/b/b/b/b$a;->h:I

    return v0
.end method
