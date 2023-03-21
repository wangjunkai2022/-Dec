.class public final Lcom/apk/il;
.super Ljava/lang/Object;
.source "ResourceCacheKey.java"

# interfaces
.implements Lcom/apk/kj;


# static fields
.field public static final break:Lcom/apk/ds;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/apk/ds<",
            "Ljava/lang/Class<",
            "*>;[B>;"
        }
    .end annotation
.end field


# instance fields
.field public final case:I

.field public final else:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field public final for:Lcom/apk/kj;

.field public final goto:Lcom/apk/mj;

.field public final if:Lcom/apk/nl;

.field public final new:Lcom/apk/kj;

.field public final this:Lcom/apk/qj;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/apk/qj<",
            "*>;"
        }
    .end annotation
.end field

.field public final try:I


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Lcom/apk/ds;

    const-wide/16 v1, 0x32

    invoke-direct {v0, v1, v2}, Lcom/apk/ds;-><init>(J)V

    sput-object v0, Lcom/apk/il;->break:Lcom/apk/ds;

    return-void
.end method

.method public constructor <init>(Lcom/apk/nl;Lcom/apk/kj;Lcom/apk/kj;IILcom/apk/qj;Ljava/lang/Class;Lcom/apk/mj;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/apk/nl;",
            "Lcom/apk/kj;",
            "Lcom/apk/kj;",
            "II",
            "Lcom/apk/qj<",
            "*>;",
            "Ljava/lang/Class<",
            "*>;",
            "Lcom/apk/mj;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/apk/il;->if:Lcom/apk/nl;

    .line 3
    iput-object p2, p0, Lcom/apk/il;->for:Lcom/apk/kj;

    .line 4
    iput-object p3, p0, Lcom/apk/il;->new:Lcom/apk/kj;

    .line 5
    iput p4, p0, Lcom/apk/il;->try:I

    .line 6
    iput p5, p0, Lcom/apk/il;->case:I

    .line 7
    iput-object p6, p0, Lcom/apk/il;->this:Lcom/apk/qj;

    .line 8
    iput-object p7, p0, Lcom/apk/il;->else:Ljava/lang/Class;

    .line 9
    iput-object p8, p0, Lcom/apk/il;->goto:Lcom/apk/mj;

    return-void
.end method


# virtual methods
.method public do(Ljava/security/MessageDigest;)V
    .locals 4
    .param p1    # Ljava/security/MessageDigest;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Lcom/apk/il;->if:Lcom/apk/nl;

    const-class v1, [B

    const/16 v2, 0x8

    invoke-interface {v0, v2, v1}, Lcom/apk/nl;->try(ILjava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    .line 2
    invoke-static {v0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v1

    iget v2, p0, Lcom/apk/il;->try:I

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    iget v2, p0, Lcom/apk/il;->case:I

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->array()[B

    .line 3
    iget-object v1, p0, Lcom/apk/il;->new:Lcom/apk/kj;

    invoke-interface {v1, p1}, Lcom/apk/kj;->do(Ljava/security/MessageDigest;)V

    .line 4
    iget-object v1, p0, Lcom/apk/il;->for:Lcom/apk/kj;

    invoke-interface {v1, p1}, Lcom/apk/kj;->do(Ljava/security/MessageDigest;)V

    .line 5
    invoke-virtual {p1, v0}, Ljava/security/MessageDigest;->update([B)V

    .line 6
    iget-object v1, p0, Lcom/apk/il;->this:Lcom/apk/qj;

    if-eqz v1, :cond_0

    .line 7
    invoke-interface {v1, p1}, Lcom/apk/kj;->do(Ljava/security/MessageDigest;)V

    .line 8
    :cond_0
    iget-object v1, p0, Lcom/apk/il;->goto:Lcom/apk/mj;

    invoke-virtual {v1, p1}, Lcom/apk/mj;->do(Ljava/security/MessageDigest;)V

    .line 9
    sget-object v1, Lcom/apk/il;->break:Lcom/apk/ds;

    iget-object v2, p0, Lcom/apk/il;->else:Ljava/lang/Class;

    invoke-virtual {v1, v2}, Lcom/apk/ds;->do(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [B

    if-nez v1, :cond_1

    .line 10
    iget-object v1, p0, Lcom/apk/il;->else:Ljava/lang/Class;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/apk/kj;->do:Ljava/nio/charset/Charset;

    invoke-virtual {v1, v2}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v1

    .line 11
    sget-object v2, Lcom/apk/il;->break:Lcom/apk/ds;

    iget-object v3, p0, Lcom/apk/il;->else:Ljava/lang/Class;

    invoke-virtual {v2, v3, v1}, Lcom/apk/ds;->new(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 12
    :cond_1
    invoke-virtual {p1, v1}, Ljava/security/MessageDigest;->update([B)V

    .line 13
    iget-object p1, p0, Lcom/apk/il;->if:Lcom/apk/nl;

    invoke-interface {p1, v0}, Lcom/apk/nl;->put(Ljava/lang/Object;)V

    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    .line 1
    instance-of v0, p1, Lcom/apk/il;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 2
    check-cast p1, Lcom/apk/il;

    .line 3
    iget v0, p0, Lcom/apk/il;->case:I

    iget v2, p1, Lcom/apk/il;->case:I

    if-ne v0, v2, :cond_0

    iget v0, p0, Lcom/apk/il;->try:I

    iget v2, p1, Lcom/apk/il;->try:I

    if-ne v0, v2, :cond_0

    iget-object v0, p0, Lcom/apk/il;->this:Lcom/apk/qj;

    iget-object v2, p1, Lcom/apk/il;->this:Lcom/apk/qj;

    .line 4
    invoke-static {v0, v2}, Lcom/apk/gs;->for(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/apk/il;->else:Ljava/lang/Class;

    iget-object v2, p1, Lcom/apk/il;->else:Ljava/lang/Class;

    .line 5
    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/apk/il;->for:Lcom/apk/kj;

    iget-object v2, p1, Lcom/apk/il;->for:Lcom/apk/kj;

    .line 6
    invoke-interface {v0, v2}, Lcom/apk/kj;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/apk/il;->new:Lcom/apk/kj;

    iget-object v2, p1, Lcom/apk/il;->new:Lcom/apk/kj;

    .line 7
    invoke-interface {v0, v2}, Lcom/apk/kj;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/apk/il;->goto:Lcom/apk/mj;

    iget-object p1, p1, Lcom/apk/il;->goto:Lcom/apk/mj;

    .line 8
    invoke-virtual {v0, p1}, Lcom/apk/mj;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method public hashCode()I
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/apk/il;->for:Lcom/apk/kj;

    invoke-interface {v0}, Lcom/apk/kj;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    .line 2
    iget-object v1, p0, Lcom/apk/il;->new:Lcom/apk/kj;

    invoke-interface {v1}, Lcom/apk/kj;->hashCode()I

    move-result v1

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 3
    iget v0, p0, Lcom/apk/il;->try:I

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 4
    iget v0, p0, Lcom/apk/il;->case:I

    add-int/2addr v1, v0

    .line 5
    iget-object v0, p0, Lcom/apk/il;->this:Lcom/apk/qj;

    if-eqz v0, :cond_0

    mul-int/lit8 v1, v1, 0x1f

    .line 6
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    add-int/2addr v1, v0

    :cond_0
    mul-int/lit8 v1, v1, 0x1f

    .line 7
    iget-object v0, p0, Lcom/apk/il;->else:Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 8
    iget-object v1, p0, Lcom/apk/il;->goto:Lcom/apk/mj;

    invoke-virtual {v1}, Lcom/apk/mj;->hashCode()I

    move-result v1

    add-int/2addr v1, v0

    return v1
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    const-string v0, "ResourceCacheKey{sourceKey="

    .line 1
    invoke-static {v0}, Lcom/apk/goto;->super(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/apk/il;->for:Lcom/apk/kj;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", signature="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/apk/il;->new:Lcom/apk/kj;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", width="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/apk/il;->try:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", height="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/apk/il;->case:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", decodedResourceClass="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/apk/il;->else:Ljava/lang/Class;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", transformation=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/apk/il;->this:Lcom/apk/qj;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v1, ", options="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/apk/il;->goto:Lcom/apk/mj;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
