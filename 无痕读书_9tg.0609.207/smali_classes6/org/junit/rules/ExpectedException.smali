.class public Lorg/junit/rules/ExpectedException;
.super Ljava/lang/Object;
.source "ExpectedException.java"

# interfaces
.implements Lorg/junit/rules/TestRule;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/junit/rules/ExpectedException$ExpectedExceptionStatement;
    }
.end annotation


# instance fields
.field private final fMatcherBuilder:Lorg/junit/rules/ExpectedExceptionMatcherBuilder;

.field private handleAssertionErrors:Z

.field private handleAssumptionViolatedExceptions:Z


# direct methods
.method private constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 100
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 94
    new-instance v0, Lorg/junit/rules/ExpectedExceptionMatcherBuilder;

    invoke-direct {v0}, Lorg/junit/rules/ExpectedExceptionMatcherBuilder;-><init>()V

    iput-object v0, p0, Lorg/junit/rules/ExpectedException;->fMatcherBuilder:Lorg/junit/rules/ExpectedExceptionMatcherBuilder;

    .line 96
    iput-boolean v1, p0, Lorg/junit/rules/ExpectedException;->handleAssumptionViolatedExceptions:Z

    .line 98
    iput-boolean v1, p0, Lorg/junit/rules/ExpectedException;->handleAssertionErrors:Z

    .line 101
    return-void
.end method

.method static synthetic access$000(Lorg/junit/rules/ExpectedException;)Lorg/junit/rules/ExpectedExceptionMatcherBuilder;
    .locals 1
    .param p0, "x0"    # Lorg/junit/rules/ExpectedException;

    .prologue
    .line 85
    iget-object v0, p0, Lorg/junit/rules/ExpectedException;->fMatcherBuilder:Lorg/junit/rules/ExpectedExceptionMatcherBuilder;

    return-object v0
.end method

.method static synthetic access$100(Lorg/junit/rules/ExpectedException;)V
    .locals 0
    .param p0, "x0"    # Lorg/junit/rules/ExpectedException;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/AssertionError;
        }
    .end annotation

    .prologue
    .line 85
    invoke-direct {p0}, Lorg/junit/rules/ExpectedException;->failDueToMissingException()V

    return-void
.end method

.method static synthetic access$200(Lorg/junit/rules/ExpectedException;)Z
    .locals 1
    .param p0, "x0"    # Lorg/junit/rules/ExpectedException;

    .prologue
    .line 85
    iget-boolean v0, p0, Lorg/junit/rules/ExpectedException;->handleAssumptionViolatedExceptions:Z

    return v0
.end method

.method static synthetic access$300(Lorg/junit/rules/ExpectedException;Ljava/lang/Throwable;Z)V
    .locals 0
    .param p0, "x0"    # Lorg/junit/rules/ExpectedException;
    .param p1, "x1"    # Ljava/lang/Throwable;
    .param p2, "x2"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 85
    invoke-direct {p0, p1, p2}, Lorg/junit/rules/ExpectedException;->optionallyHandleException(Ljava/lang/Throwable;Z)V

    return-void
.end method

.method static synthetic access$400(Lorg/junit/rules/ExpectedException;)Z
    .locals 1
    .param p0, "x0"    # Lorg/junit/rules/ExpectedException;

    .prologue
    .line 85
    iget-boolean v0, p0, Lorg/junit/rules/ExpectedException;->handleAssertionErrors:Z

    return v0
.end method

.method static synthetic access$500(Lorg/junit/rules/ExpectedException;Ljava/lang/Throwable;)V
    .locals 0
    .param p0, "x0"    # Lorg/junit/rules/ExpectedException;
    .param p1, "x1"    # Ljava/lang/Throwable;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 85
    invoke-direct {p0, p1}, Lorg/junit/rules/ExpectedException;->handleException(Ljava/lang/Throwable;)V

    return-void
.end method

.method private failDueToMissingException()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/AssertionError;
        }
    .end annotation

    .prologue
    .line 183
    iget-object v1, p0, Lorg/junit/rules/ExpectedException;->fMatcherBuilder:Lorg/junit/rules/ExpectedExceptionMatcherBuilder;

    invoke-virtual {v1}, Lorg/junit/rules/ExpectedExceptionMatcherBuilder;->build()Lorg/hamcrest/Matcher;

    move-result-object v1

    invoke-static {v1}, Lorg/hamcrest/StringDescription;->toString(Lorg/hamcrest/SelfDescribing;)Ljava/lang/String;

    move-result-object v0

    .line 184
    .local v0, "expectation":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Expected test to throw "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/junit/Assert;->fail(Ljava/lang/String;)V

    .line 185
    return-void
.end method

.method private handleException(Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "e"    # Ljava/lang/Throwable;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 197
    iget-object v0, p0, Lorg/junit/rules/ExpectedException;->fMatcherBuilder:Lorg/junit/rules/ExpectedExceptionMatcherBuilder;

    invoke-virtual {v0}, Lorg/junit/rules/ExpectedExceptionMatcherBuilder;->expectsThrowable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 198
    iget-object v0, p0, Lorg/junit/rules/ExpectedException;->fMatcherBuilder:Lorg/junit/rules/ExpectedExceptionMatcherBuilder;

    invoke-virtual {v0}, Lorg/junit/rules/ExpectedExceptionMatcherBuilder;->build()Lorg/hamcrest/Matcher;

    move-result-object v0

    invoke-static {p1, v0}, Lorg/junit/Assert;->assertThat(Ljava/lang/Object;Lorg/hamcrest/Matcher;)V

    .line 202
    return-void

    .line 200
    :cond_0
    throw p1
.end method

.method public static none()Lorg/junit/rules/ExpectedException;
    .locals 1

    .prologue
    .line 91
    new-instance v0, Lorg/junit/rules/ExpectedException;

    invoke-direct {v0}, Lorg/junit/rules/ExpectedException;-><init>()V

    return-object v0
.end method

.method private optionallyHandleException(Ljava/lang/Throwable;Z)V
    .locals 0
    .param p1, "e"    # Ljava/lang/Throwable;
    .param p2, "handleException"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 189
    if-eqz p2, :cond_0

    .line 190
    invoke-direct {p0, p1}, Lorg/junit/rules/ExpectedException;->handleException(Ljava/lang/Throwable;)V

    .line 194
    return-void

    .line 192
    :cond_0
    throw p1
.end method


# virtual methods
.method public apply(Lorg/junit/runners/model/Statement;Lorg/junit/runner/Description;)Lorg/junit/runners/model/Statement;
    .locals 1
    .param p1, "base"    # Lorg/junit/runners/model/Statement;
    .param p2, "description"    # Lorg/junit/runner/Description;

    .prologue
    .line 115
    new-instance v0, Lorg/junit/rules/ExpectedException$ExpectedExceptionStatement;

    invoke-direct {v0, p0, p1}, Lorg/junit/rules/ExpectedException$ExpectedExceptionStatement;-><init>(Lorg/junit/rules/ExpectedException;Lorg/junit/runners/model/Statement;)V

    return-object v0
.end method

.method public expect(Ljava/lang/Class;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+",
            "Ljava/lang/Throwable;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 131
    .local p1, "type":Ljava/lang/Class;, "Ljava/lang/Class<+Ljava/lang/Throwable;>;"
    invoke-static {p1}, Lorg/hamcrest/CoreMatchers;->instanceOf(Ljava/lang/Class;)Lorg/hamcrest/Matcher;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/junit/rules/ExpectedException;->expect(Lorg/hamcrest/Matcher;)V

    .line 132
    return-void
.end method

.method public expect(Lorg/hamcrest/Matcher;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/hamcrest/Matcher",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 123
    .local p1, "matcher":Lorg/hamcrest/Matcher;, "Lorg/hamcrest/Matcher<*>;"
    iget-object v0, p0, Lorg/junit/rules/ExpectedException;->fMatcherBuilder:Lorg/junit/rules/ExpectedExceptionMatcherBuilder;

    invoke-virtual {v0, p1}, Lorg/junit/rules/ExpectedExceptionMatcherBuilder;->add(Lorg/hamcrest/Matcher;)V

    .line 124
    return-void
.end method

.method public expectCause(Lorg/hamcrest/Matcher;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/hamcrest/Matcher",
            "<+",
            "Ljava/lang/Throwable;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 155
    .local p1, "expectedCause":Lorg/hamcrest/Matcher;, "Lorg/hamcrest/Matcher<+Ljava/lang/Throwable;>;"
    invoke-static {p1}, Lorg/junit/internal/matchers/ThrowableCauseMatcher;->hasCause(Lorg/hamcrest/Matcher;)Lorg/hamcrest/Matcher;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/junit/rules/ExpectedException;->expect(Lorg/hamcrest/Matcher;)V

    .line 156
    return-void
.end method

.method public expectMessage(Ljava/lang/String;)V
    .locals 1
    .param p1, "substring"    # Ljava/lang/String;

    .prologue
    .line 139
    invoke-static {p1}, Lorg/hamcrest/CoreMatchers;->containsString(Ljava/lang/String;)Lorg/hamcrest/Matcher;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/junit/rules/ExpectedException;->expectMessage(Lorg/hamcrest/Matcher;)V

    .line 140
    return-void
.end method

.method public expectMessage(Lorg/hamcrest/Matcher;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/hamcrest/Matcher",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 147
    .local p1, "matcher":Lorg/hamcrest/Matcher;, "Lorg/hamcrest/Matcher<Ljava/lang/String;>;"
    invoke-static {p1}, Lorg/junit/internal/matchers/ThrowableMessageMatcher;->hasMessage(Lorg/hamcrest/Matcher;)Lorg/hamcrest/Matcher;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/junit/rules/ExpectedException;->expect(Lorg/hamcrest/Matcher;)V

    .line 148
    return-void
.end method

.method public handleAssertionErrors()Lorg/junit/rules/ExpectedException;
    .locals 1

    .prologue
    .line 104
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/junit/rules/ExpectedException;->handleAssertionErrors:Z

    .line 105
    return-object p0
.end method

.method public handleAssumptionViolatedExceptions()Lorg/junit/rules/ExpectedException;
    .locals 1

    .prologue
    .line 109
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/junit/rules/ExpectedException;->handleAssumptionViolatedExceptions:Z

    .line 110
    return-object p0
.end method
