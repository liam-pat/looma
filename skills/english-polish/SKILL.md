---
name: english-polish
description: Polish English or translate Chinese in short workplace text, with Chinese explanations and translations. Not for articles or project-specific translation workflows.
---

# English Polish

Use this skill for short workplace text, such as messages, comments, and task titles, when asked to polish English, translate Chinese into English, or continue an established editing workflow. Do not select it automatically for articles, documents, or project-specific translation; follow the relevant project instructions or dedicated skill. Do not treat ordinary questions as text to edit.

Identify the source language from the **target text**, not the surrounding request. Use the same output format for English, Chinese, and mixed input, making each alternative one coherent English version.

## Principles

- Preserve meaning, facts, intent, and certainty. Do not invent reasons, deadlines, or promises.
- Make only useful changes. Keep natural, correct wording unchanged; distinguish errors from optional style improvements.
- For both English polishing and Chinese-to-English translation, default to three versions in this order: **工作、口语、正式礼貌**. 工作 is clear, natural workplace wording; 口语 is conversational without forced slang; 正式礼貌 combines precise, professional language with a considerate tone, without inflated language, added apologies or gratitude, or weakened requirements unless supported by the original. Preserve meaning and intent across all three.
- Preserve the text's purpose and format: a task title should remain a title, not become a conversational request. If a tone distinction would be unnatural or change the meaning, reuse suitable wording under that label and briefly explain the overlap instead of forcing a difference.
- Ask for clarification only when ambiguity materially affects meaning. Follow the user's requested tone, format, and omissions.
- For multiple inputs, keep their order and process each separately.

## Output Format

Output in this order:

1. **推荐表达:** Give complete English versions labeled 工作、口语、正式礼貌, ready to copy. Keep explanatory annotations outside the English text. If the user requests specific tones or fewer versions, follow that request.
2. **原文中文:** Translate the original English faithfully. For Chinese input, reproduce the original text; for mixed input, retain the Chinese and translate the English portions into a coherent Chinese rendering.
3. **修改后中文:** Translate each English alternative with matching labels. If all translations are identical, give one translation explicitly labeled as applying to all versions.
4. **修改说明:** Briefly explain substantive changes in Chinese, showing original → revision. For Chinese input, explain translation choices and tone differences using Chinese phrase → English expression where useful; do not present translation as correcting English errors in the source. Use **bold** to highlight the changed fragments and key grammar or usage points. Distinguish required corrections from optional style choices; explain alternative-specific changes under their matching labels. If the original English is already natural, say so and label alternatives as optional.

Use bold Chinese section labels and version labels for easy scanning. Highlight only key phrases in the explanations, not entire paragraphs; do not rely on HTML or colored text.

If the original has grammar errors but its meaning is clear, translate that meaning naturally. Preserve any real differences between versions; keep both labeled translations even when identical. Do not invent differences to justify an edit.

## Examples

### English

Input: if the payment createdby the retention offer, add the retention tag into the payment

**推荐表达**

**工作：** If the payment is created through the retention offer, add the retention tag to it.

**口语：** If the payment comes from the retention offer, tag it with the retention tag.

**正式礼貌：** If the payment is created through the retention offer, please apply the retention tag to the payment.

**原文中文**

如果这笔支付是通过留存优惠创建的，就给这笔支付添加留存标签。

**修改后中文**

**工作：** 如果这笔支付是通过留存优惠创建的，就给它添加留存标签。

**口语：** 如果这笔支付来自留存优惠，就给它打上留存标签。

**正式礼貌：** 如果这笔支付是通过留存优惠创建的，请为该支付添加留存标签。

**修改说明**

- createdby → **is created by**：补上空格和被动语态需要的 **is**。
- by → **through**：表达通过某项优惠创建支付时，**through** 更自然，属于措辞优化。
- add … into → **add … to**：添加标签使用 **add a tag to**。
- **工作版**用 it 避免重复；**口语版**用 comes from 和 tag it，表达更随意；**正式礼貌版**用 please apply the tag，兼顾正式和礼貌，保持原有指令含义。这些都是可选的风格调整。

For an already natural sentence such as "I'll get back to you tomorrow," keep it as the 工作 version and explicitly say no correction is needed. Treat the other tones as optional style choices, allowing identical wording where appropriate. Translate the original and alternatives faithfully without inventing differences between them.

### Chinese

Input: 我今天可能来不及看，明天上午给你反馈可以吗？

**推荐表达**

**工作：** I may not have time to review it today. Is it okay if I give you feedback tomorrow morning?

**口语：** I might not get a chance to look at it today. Is it OK if I send you my feedback tomorrow morning?

**正式礼貌：** I may be unable to review it today. Would it be okay if I provided my feedback tomorrow morning?

**原文中文**

我今天可能来不及看，明天上午给你反馈可以吗？

**修改后中文**

**工作：** 我今天可能没时间看，明天上午给你反馈可以吗？

**口语：** 我今天可能抽不出空看，明天上午把反馈发给你，行吗？

**正式礼貌：** 我今天可能无法审阅，不知道明天上午提供反馈是否可以？

**修改说明**

- 可能 → **may / might**：保留原文的不确定性。
- 看 → **review / look at**：前者更适合工作和正式场景，后者更口语化。
- 可以吗 → **Is it okay if / Would it be okay if**：保留征求同意的含义，避免把请求改成承诺；后者更委婉。
